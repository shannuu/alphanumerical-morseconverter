a='.-'
b='-...'
c='-.-.'
d="-.."
e="."
f="..-."
g="--."
h="...."
i=".."
j=".---"
k="-.-"
l=".-.."
m="--"
n="-."
o="---"
p=".--."
q="--.-"
r=".-."
s="..."
t="-"
u="..-"
v="...-"
w=".--"
x="-..-"
y="-.--"
z="--.."
l1=".----"
l2="..---"
l3="...--"
l4="....-"
l5="....."
l6="-...."
l7="--..."
l8="---.."
l9="----."
l0="-----"
question="..--.."
exclaim="-.-.--"
dot=".-.-.-"
comma="--..--"
semicolon="-.-.-."
colon="---..."
plus=".-.-.-"
minus="-....-"
slash="-..-."
equal="-...-"
at=".--.-."
apostrophy=".---."
openparanthesis="-.--."
closedparanthesis="-.--.-"
ampersand=".-..."
underscore="..--.-"
quotation=".-..-."
dollar="...-..-"


alphatomorse(){

read -p $"Enter the sentence to be converted:- " word

var=1
chars=$(echo $word | wc -c)
morse=""
until [[ $var -eq $chars ]]
do
le=$(echo "${word}" | cut -c $var)
if [[ $le == 'a' ]] || [[ $le == 'A' ]]; then
morse+=$a
elif [[ $le == 'b' ]] || [[ $le == 'B' ]]; then
morse+=$b
elif [[ $le == 'c' ]] || [[ $le == 'C' ]]; then
morse+=$c
elif [[ $le == 'd' ]] || [[ $le == 'D' ]]; then
morse+=$d
elif [[ $le == 'e' ]] || [[ $le == 'E' ]]; then
morse+=$e
elif [[ $le == 'f' ]] || [[ $le == 'F' ]]; then
morse+=$f
elif [[ $le == 'g' ]] || [[ $le == 'G' ]]; then
morse+=$g
elif [[ $le == 'h' ]] || [[ $le == 'H' ]]; then
morse+=$h
elif [[ $le == 'i' ]] || [[ $le == 'I' ]]; then
morse+=$i
elif [[ $le == 'j' ]] || [[ $le == 'J' ]]; then
morse+=$j
elif [[ $le == 'k' ]] || [[ $le == 'K' ]]; then
morse+=$k
elif [[ $le == 'l' ]] || [[ $le == 'L' ]]; then
morse+=$l
elif [[ $le == 'm' ]] || [[ $le == 'M' ]]; then
morse+=$m
elif [[ $le == 'n' ]] || [[ $le == 'N' ]]; then
morse+=$n
elif [[ $le == 'o' ]] || [[ $le == 'O' ]]; then
morse+=$o
elif [[ $le == 'p' ]] || [[ $le == 'P' ]]; then
morse+=$p
elif [[ $le == 'q' ]] || [[ $le == 'Q' ]]; then
morse+=$q
elif [[ $le == 'r' ]] || [[ $le == 'R' ]]; then
morse+=$r
elif [[ $le == 's' ]] || [[ $le == 'S' ]]; then
morse+=$s
elif [[ $le == 't' ]] || [[ $le == 'T' ]]; then
morse+=$t
elif [[ $le == 'u' ]] || [[ $le == 'U' ]]; then
morse+=$u
elif [[ $le == 'v' ]] || [[ $le == 'V' ]]; then
morse+=$v
elif [[ $le == 'w' ]] || [[ $le == 'W' ]]; then
morse+=$w
elif [[ $le == 'x' ]] || [[ $le == 'X' ]]; then
morse+=$x
elif [[ $le == 'y' ]] || [[ $le == 'Y' ]]; then
morse+=$y
elif [[ $le == 'z' ]] || [[ $le == 'Z' ]]; then
morse+=$z
elif [[ $le == '1' ]]; then
morse+=$l1
elif [[ $le == '2' ]]; then
morse+=$l2
elif [[ $le == '3' ]]; then
morse+=$l3
elif [[ $le == '4' ]]; then
morse+=$l4
elif [[ $le == '5' ]]; then
morse+=$l5
elif [[ $le == '6' ]]; then
morse+=$l6
elif [[ $le == '7' ]]; then
morse+=$l7
elif [[ $le == '8' ]]; then
morse+=$l8
elif [[ $le == '9' ]]; then
morse+=$l9
elif [[ $le == '0' ]]; then
morse+=$l0
elif [[ $le == '?' ]]; then
morse+=$question
elif [[ $le == '!' ]]; then
morse+=$exclaim
elif [[ $le == '.' ]]; then
morse+=$dot
elif [[ $le == ',' ]]; then
morse+=$comma
elif [[ $le == ';' ]]; then
morse+=$semicolon
elif [[ $le == ':' ]]; then
morse+=$colon
elif [[ $le == '+' ]]; then
morse+=$plus
elif [[ $le == '-' ]]; then
morse+=$minus
elif [[ $le == '/' ]]; then
morse+=$slash
elif [[ $le == '=' ]]; then
morse+=$equal
elif [[ $le == '@' ]]; then
morse+=$at
elif [[ $le == "'" ]]; then
morse+=$apostrophy
elif [[ $le == "(" ]]; then
morse+=$openparanthesis
elif [[ $le == ")" ]]; then
morse+=$closedparanthesis
elif [[ $le == "&" ]]; then
morse+=$ampersand
elif [[ $le == "_" ]]; then
morse+=$underscore
elif [[ $le == '"' ]]; then
morse+=$quotation
elif [[ $le == "$" ]]; then
morse+=$dollar
elif [[ $le == " " ]]; then
morse+="#"
else
echo "$le has no morse code"
fi

morse+=" "
(( var++ ))
done
echo
echo Morse Code=  $morse
}

morsetoalpha(){
read -p $"Enter the morse code to be converted:- " code

var=1
rchars=$(echo $code | wc -w)
chars=$(( $rchars + 1 ))
word=""
until [[ $var -eq $chars ]]
do
le=$(echo "${code}" | cut -d " " -f $var)
if [[ $le == '.-' ]] || [[ $le == 'A' ]]; then
word+="a"
elif [[ $le == '-...' ]] || [[ $le == 'B' ]]; then
word+="b"
elif [[ $le == '-.-.' ]] || [[ $le == 'C' ]]; then
word+="c"
elif [[ $le == '-..' ]] || [[ $le == 'D' ]]; then
word+="d"
elif [[ $le == '.' ]] || [[ $le == 'E' ]]; then
word+="e"
elif [[ $le == '..-.' ]] || [[ $le == 'F' ]]; then
word+="f"
elif [[ $le == '--.' ]] || [[ $le == 'G' ]]; then
word+="g"
elif [[ $le == '....' ]] || [[ $le == 'H' ]]; then
word+="h"
elif [[ $le == '..' ]] || [[ $le == 'I' ]]; then
word+="i"
elif [[ $le == '.---' ]] || [[ $le == 'J' ]]; then
word+="j"
elif [[ $le == '-.-' ]] || [[ $le == 'K' ]]; then
word+="k"
elif [[ $le == '.-..' ]] || [[ $le == 'L' ]]; then
word+="l"
elif [[ $le == '--' ]] || [[ $le == 'M' ]]; then
word+="m"
elif [[ $le == '-.' ]] || [[ $le == 'N' ]]; then
word+="n"
elif [[ $le == '---' ]] || [[ $le == 'O' ]]; then
word+="o"
elif [[ $le == '.--.' ]] || [[ $le == 'P' ]]; then
word+="p"
elif [[ $le == '--.-' ]] || [[ $le == 'Q' ]]; then
word+="q"
elif [[ $le == '.-.' ]] || [[ $le == 'R' ]]; then
word+="r"
elif [[ $le == '...' ]] || [[ $le == 'S' ]]; then
word+="s"
elif [[ $le == '-' ]] || [[ $le == 'T' ]]; then
word+="t"
elif [[ $le == '..-' ]] || [[ $le == 'U' ]]; then
word+="u"
elif [[ $le == '...-' ]] || [[ $le == 'V' ]]; then
word+="v"
elif [[ $le == '.--' ]] || [[ $le == 'W' ]]; then
word+="w"
elif [[ $le == '-..-' ]] || [[ $le == 'X' ]]; then
word+="x"
elif [[ $le == '-.--' ]] || [[ $le == 'Y' ]]; then
word+="y"
elif [[ $le == '--..' ]] || [[ $le == 'Z' ]]; then
word+="z"
elif [[ $le == '.----' ]]; then
word+="1"
elif [[ $le == '..---' ]]; then
word+="2"
elif [[ $le == '...--' ]]; then
word+="3"
elif [[ $le == '....-' ]]; then
word+="4"
elif [[ $le == '.....' ]]; then
word+="5"
elif [[ $le == '-....' ]]; then
word+="6"
elif [[ $le == '--...' ]]; then
word+="7"
elif [[ $le == '---..' ]]; then
word+="8"
elif [[ $le == '----.' ]]; then
word+="9"
elif [[ $le == '-----' ]]; then
word+="0"
elif [[ $le == '..--..' ]]; then
word+="?"
elif [[ $le == '-.-.--' ]]; then
word+="!"
elif [[ $le == '.-.-.-' ]]; then
word+="."
elif [[ $le == '--..--' ]]; then
word+=","
elif [[ $le == '-.-.-.' ]]; then
word+=";"
elif [[ $le == '---...' ]]; then
word+=":"
elif [[ $le == '.-.-.-' ]]; then
word+="+"
elif [[ $le == '-....-' ]]; then
word+="-"
elif [[ $le == '-..-.' ]]; then
word+="/"
elif [[ $le == '-...-' ]]; then
word+="="
elif [[ $le == '.--.-.' ]]; then
word+="@"
elif [[ $le == ".---." ]]; then
word+="'"
elif [[ $le == "-.--." ]]; then
word+="("
elif [[ $le == "-.--.-" ]]; then
word+=")"
elif [[ $le == ".-..." ]]; then
word+="&"
elif [[ $le == "..--.-" ]]; then
word+="_"
elif [[ $le == '.-..-.' ]]; then
word+='"'
elif [[ $le == "...-..-" ]]; then
word+="$"
elif [[ $le == "#" ]]; then
word+=" "
else
echo "$le has no morse code"
fi

morse+=" "
(( var++ ))
done
echo
echo The Sentence=  $word
}


banner(){
echo
echo [1] ALPHANUMERIC TO MORSE
echo [2] MORSE TO ALPHANUMERIC
echo
echo [99] EXIT
echo
read -p $"Choose one option:- " option
case $option in
1)
alphatomorse
;;
2)
morsetoalpha
;;
99)
exit
;;
*)
echo incorrect option
sleep 3
banner
;;
esac
}

banner
while [[ true ]]; do
sleep 3
banner
done
