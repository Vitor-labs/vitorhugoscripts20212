#!/usr/bin/awk -f

BEGIN {rst = 0}

$6 ~ /^pam_unix\(sshd:session\):/ && $8 ~ /^opened/ && $11 ~ /^root/{rst += 1}

END {print "TOTAL: " rst}

#awk '$5 !~ /^sshd/ {print $5}' auth.log