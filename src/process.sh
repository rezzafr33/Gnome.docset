#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

API=$1 
MODULE=$2

DEF_API='/Users/shurain/doc/glib/api-index-full.html'
DEF_MOD='/Users/shurain/doc/glib/index.html'

echo "API Index: ${API:-$DEF_API}"
echo "MODULE Index: ${MODULE:-$DEF_MOD}"

API_FILE=tmp.api
MODULE_FILE=tmp.module

echo "Preprocessing APIs"
grep "<a class=\"link\" href" ${API:-$DEF_API} | sed "s/<a class=\"link\" href=\"//g" | sed "s/\" title=.*>\(.*\)<\/a>,/ \1/g" | sed "s/ in.*$//g" | sed "s/enum$/clconst/g" | sed "s/user_function/function/g" | sed "s/function$/func/g" | sed "s/struct$/cl/g" | sed "s/typedef$/tdef/g" | sed "s/union$/cl/g" | sed "s/variable$/clconst/g" > $API_FILE

echo "Preprocessing Modules"
grep "href" ${MODULE:-$DEF_MOD} | sed "s/.*<link.*//g" | sed "s/.*<dt>.*//g" | sed "s/.*class=\"ulink\".*//g" | sed "s/^\n$//g" | sed "/^$/d" | sed "s/.*<a href=\"//g" | sed "s/\">\(.*\)<\/a><\/span>.*/ \1/g" | sed -n '/glib-Version-Information.html/,$p' | sed "/glib-Automatic-String-Completion.html/q" > $MODULE_FILE

echo "python process.py"
python $DIR/process.py

echo "Cleanup"
rm $API_FILE
rm $MODULE_FILE

echo "Done"
