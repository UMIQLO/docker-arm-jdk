#!/bin/sh
if [ "$TYPE" = "brook" ]; then
	brook server -l :21314 -p $SERVER_PW
elif [ "$TYPE" = "ss" ]; then
	brook ssserver -l :21314 -p $SERVER_PW
else
        echo "Server Type Error! (Your Selection: [$TYPE])"
        echo "Only Support [brook / ss]"
        exit 0
fi
