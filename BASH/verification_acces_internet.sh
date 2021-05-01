ping -q -c 2 cloudflare.com >/dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "up"
else
    echo "down"
fi