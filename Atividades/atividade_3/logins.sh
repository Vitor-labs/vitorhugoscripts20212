
grep -c -v 'sshd' auth.log

egrep -c 'sshd:session): session opened for user j.' auth.log