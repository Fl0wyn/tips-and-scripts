LIST=$(
    cat <<EOF
22;pi@192.168.1.10
2222;pi@192.168.1.20
EOF
)

for i in $LIST; do

    iping=$(echo "$i" | cut -d@ -f2)
    ping -c1 $iping &>/dev/null

    if [ $? = 0 ]; then
        issh=$(echo "$i" | tr -s ';' ' ')
        iuser=$(echo "$i" | cut -d'@' -f1 | cut -d';' -f2)
        scp -P $issh:/home/$iuser/
        ssh -p $issh 'touch fichier_test'
    fi

done
