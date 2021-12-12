#!/usr/bin/awk -f

BEGIN {rst = 0}

$5 !~ /^sshd/{ rst = rst + 1; print $5}

END {print "TOTAL: " rst}

#awk '$5 !~ /^sshd/ {print $5}' auth.log