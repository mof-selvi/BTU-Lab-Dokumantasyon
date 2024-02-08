rm -f .ssh/known_hosts
LABNO=3
MAXPC=53
if [[ $LABNO -eq 3 ]]
    then
        MAXPC=49
fi
for (( i = 1; i <= $MAXPC; i++ ))
do
echo "Processing pc ${i}"
sshpass -p 'btubm2023' ssh -o StrictHostKeyChecking=no "lab${LABNO}pc${i}.local" 'echo btubm2023 | sudo -S curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\
echo btubm2023 | sudo -S apt-get install nodejs -y'
done

