#!/bin/bash
# add_userdict.sh
#
# e.g.:
#    ln -s $DICT_FILE ~/Desktop/userdict.plist
#    ln -s ~/github/work-efficiency-utils/add_userdict.sh ~/add
#    ~/add nhsj 你好世界


DICT_FILE=~/github/work-efficiency-utils/userdict.plist
SHORTCUT=$1
PHRASE=$2


[[ "$#" -ne 2 ]] && {
    echo "Usage: $0 nhsj 你好世界" 1>&2
    exit 1
}

[[ ! -f $DICT_FILE ]] && {
    echo "$DICT_FILE not found"
    exit 1
}


gsed -i $"/<\/array>/i\ \ \ \ <dict>\n \
		<key>phrase<\/key>\n \
		<string>$PHRASE<\/string>\n \
		<key>shortcut<\/key>\n \
		<string>$SHORTCUT<\/string>\n \
	<\/dict>" $DICT_FILE

