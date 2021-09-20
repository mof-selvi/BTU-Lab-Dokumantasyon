for i in {1..53}
do
echo "Processing pc ${i}"
sshpass -p 'btubm2021' ssh -o StrictHostKeyChecking=no "lab2pc${i}.local" 'shutdown -s -t 00 -f'
done

