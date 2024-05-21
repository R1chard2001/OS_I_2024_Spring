#!/bin/bash

# függvények argumentum feldolgozáshoz, ne kelljen ezeknek a logikáját beleírni, csak meghívni
help() {
cat << EOF
A program használata:
$0 [-p|--ip <ip cím>]
$0 -h|--help
EOF
}

no_value_error() {
echo "Nincs megadva a \"$1\" paraméternek érték!"
exit 1
}

# argumentumfeldolgozás
I=$1
while [ $1 ]
do
 case $I in
  -p | --ip)
   shift
   if [ -z $1 ]; then no_value_error $I; fi
   ip=$1
   ;;
  -h | --help)
   help
   exit 0
   ;;
  *)
   echo "Érvénytelen paraméter! A $1 paramétert nem értelmezi a program!"
   help
   exit 1
   ;;
  esac
 shift
 I=$1
done

# api lekérdezés
res=$(curl -s https://ipinfo.io/$ip | jq)
# json objektum kulcsainak lekérdezése, be is lehet égetni a szkriptbe igazából
keys=$(echo $res | jq keys)
keys_n=$(( $(echo $keys | jq ". | length") - 1 ))
# lekérdezett adatok kiírása szépen
for i in $(seq 0 1 $keys_n); do
  key=$(echo $keys | jq ".[$i]" | tr -d \")
  value=$(echo $res | jq ".$key" | tr -d \")
  echo $key: $value
done
