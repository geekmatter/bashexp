#!/usr/bin/ksh


while read USERS
do
 echo $USERS | awk 'BEGIN {FS=":"} {print "User=" $1 " Home=" $6 " Shell=" $7} '
done < /etc/passwd
exit 0
