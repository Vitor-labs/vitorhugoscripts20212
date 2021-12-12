#!/usr/bin/awk -f

BEGIN {rst = 0}

$2 ~ /1(1|2)/ && $8 ~ /^opened/ {rst = rst + 1}

END {print "TOTAL: " rst}

#awk '$5 !~ /^sshd/ {print $5}' auth.log