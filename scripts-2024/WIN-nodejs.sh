LABNO=1
MAXPC=53
if [[ $LABNO -eq 3 ]]
    then
        MAXPC=49
fi
for (( i = 0; i <= $MAXPC; i++ ))
do
echo "Processing pc ${i}"
sshpass -p 'btubm2023' ssh -o StrictHostKeyChecking=no "lab${LABNO}pc${i}.local" 'choco install nodejs-lts -y'
done
