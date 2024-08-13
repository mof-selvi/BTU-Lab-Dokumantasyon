rm -f .ssh/known_hosts
LABNO=2
MAXPC=55
for (( i = 1; i <= $MAXPC; i++ ))
do
echo "Processing pc ${i}"
sshpass -p 'btubm2024' ssh -o StrictHostKeyChecking=no "lab${LABNO}pc${i}.local" 'shutdown -s -t 00 -f' & 
done
