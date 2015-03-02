#!/bin/sh
#
# Lab 02

touch test
chmod a+r test
chmod 600 test
chmod 664 test

grep SECRET enfile | sed -e '/^$/d' -e 's/[a-z]//g' -e 's/\n/ /g' -e 's/[A-LN-Z0-9]*M\([0-9]*\)/\1\n/g' | sed '/^$/d'
