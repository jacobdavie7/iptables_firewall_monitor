ELEV=$(id | grep root | cut -d' ' -f1)
if [ "$ELEV" == "uid=0(root)" ]; then
while true; do
        clear
        iptables -L -v
        echo -e "\n\n\e[91mCTRL + C to Cancel\e[39m"
        echo -e "\t\e[31mRun 'iptables -Z' to Zero-out counters (rules stay intact)\e[39m"
        sleep 1
done
fi

if [ "$ELEV" != "uid=0(root)" ]; then
while true; do
        clear
        sudo -i iptables -L -v
        echo -e "\n\n\e[91mCTRL + C to Cancel\e[39m"
        echo -e "\t\e[31mRun 'iptables -Z' to Zero-out counters (rules stay intact)\e[39m"
        sleep 1
done
fi
#Two segments so we don't have to go though if statements every time
