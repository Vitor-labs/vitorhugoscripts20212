#!/usr/bin/awk -f

BEGIN {rst = 0}

$6 ~ /^pam_unix\(sshd:session\):/ && $8 ~ /^opened/ && $11 ~ /^j/{rst += 1}

END {print "TOTAL: " rst}

# awk -f questao01_2.awk auth.log    