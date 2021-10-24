
grep -c -v 'sshd' auth.log

egrep -c 'sshd:session): session opened for user j.' auth.log

egrep -c 'root' auth.log

egrep -c '^(Oct 1(1|2)|).{55}session opened' auth.log