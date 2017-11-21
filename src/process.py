#!/usr/bin/env python3

import sqlite3
import sys
import xml.etree.ElementTree as etree

types = {'enum':'Enum', 'function':'Function', 'macro':'Macro', 'property':'Property', 'constant':'Constant', 'member': 'Section',
         'signal':'Event', 'struct':'Struct', 'typedef':'Define', 'union':'Union', 'variable': 'Variable', 'method': 'Method'}

def get_keywords():
    with open(sys.argv[1]) as f:
            tree = etree.parse(f)
            book = tree.getroot()
            subs = book.findall('.//{http://www.devhelp.net/book}sub')
            keywords = book.findall('.//{http://www.devhelp.net/book}keyword')

    return subs, keywords

if __name__ == '__main__':
    subs, keywords = get_keywords()
    conn = sqlite3.connect('docSet.dsidx')
    c = conn.cursor()

    try: c.execute('DROP TABLE searchIndex;')
    except: pass

    try:
        c.execute("CREATE TABLE searchIndex(id INTEGER PRIMARY KEY, name TEXT, type TEXT, path TEXT)")
        c.execute('CREATE UNIQUE INDEX anchor ON searchIndex (name, type, path);')
    except sqlite3.OperationalError as e:
        print (e)
        sys.exit(1)

    entries = []
    
    for sub in subs:
        entries.append((sub.get('name'), 'Section', sub.get('link')))
        
    for keyword in keywords:
        entries.append((keyword.get('name'), types[keyword.get('type')] if keyword.get('type') else 'Section', keyword.get('link')))

    c.executemany("INSERT OR IGNORE INTO searchIndex(name, type, path) VALUES (?, ?, ?)", entries)
    conn.commit()
    conn.close()
