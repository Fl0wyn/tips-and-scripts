# BASH

## Liste des packages a installer
```BASH
LISTE_DES_PACKAGES_A_INSTALLER=(
    nano
    git
)

apt install ${LISTE_DES_PACKAGES_A_INSTALLER[@]}
dnf install ${LISTE_DES_PACKAGES_A_INSTALLER[@]}
```  

## Format date
```BASH
DATE=$(date +%d-%m-%Y)

echo $DATE
```  

## Format de messages
```BASH
SUCCES=$(echo -e "[\e[42m\e[1m SUCCÈS \e[0m"])
ERREUR=$(echo -e "[\e[41m\e[1m ERREUR \e[0m"])
AVERTISSEMENT=$(echo -e "[\e[43m\e[1m AVERTISSEMENT \e[0m"])
INFORMATION=$(echo -e "\e[36m\e[1m->\e[0m")

echo $SUCCES
echo $ERREUR
echo $AVERTISSEMENT
echo $INFORMATION
```  

## Verification acces internet
```BASH
ping -q -c 2 cloudflare.com >/dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "up"
else
    echo "down"
fi
```  

