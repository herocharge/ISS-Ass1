read inp
echo ${#inp}

#reversing the string
#inp=$(eval echo $(eval echo -e "\\\b\$\{inp:{${#inp}..0}:1\}")) without using rev
rev=$(echo $inp | rev)
echo $rev

#shifting letters
rev=$(echo $rev | tr a-z b-za | tr A-Z B-ZA)
echo $rev

#reversing half of the input
h1=${inp:0:((${#inp}/2))}
h2=${inp:((${#inp}/2))}
echo $(echo $h1 | rev)$h2