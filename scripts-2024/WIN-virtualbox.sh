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
sshpass -p 'btubm2023' ssh -o StrictHostKeyChecking=no "lab${LABNO}pc${i}.local" 'choco install virtualbox -y'
done

