#! /bin/bash
function sinParametros {
    nmap 192.168.1.0/24 -sT  -p 22 > /dev/null -oG temp
}
function conParametros() {
    nmap -sT $1 -p $2> /dev/null -oG temp         #/dev/null == hacer desaparecer (Nada sale por pantalla)
    echo $0
}
function buscar {
    cat temp | grep open > resul
    cat resul
}
if [ "$0" != "" ]; then
    conParametros $1 $2
    buscar
else
    sinParametros
    buscar
fi

# You can also access all arguments in an array and use them in a script.

# args=("$@")
# echo "First->"  ${args[0]} 
# echo "Second->" ${args[1]}