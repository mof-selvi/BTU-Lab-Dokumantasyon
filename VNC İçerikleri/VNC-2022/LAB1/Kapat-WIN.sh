labno='1'
pcnum=51
passwrd='btubm2022'


for ((i=1; i<=$pcnum; i++))
do
echo "Processing lab ${labno} pc ${i}"
sshpass -p "${passwrd}" ssh -o StrictHostKeyChecking=no "lab${labno}pc${i}.local" 'shutdown -s -t 00 -f'
done

