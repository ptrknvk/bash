ifconfig | grep 'inet addr:' | grep Bcast:192.168.1.255 | head -n1 | cut -f2 -d: | cut -f1 -d ' '
cd /usr/local/tonido
./tonidostart.sh

