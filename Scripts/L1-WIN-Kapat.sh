for i in {1..51}
do
echo "Processing pc ${i}"
sshpass -p 'btubm2021' ssh -o StrictHostKeyChecking=no "lab1pc${i}.local" 'shutdown -s -t 00 -f'
done

