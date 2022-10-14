labno='2'
pcnum=53
passwrd='btubm2022'

for i in {1..$pcnum}
do
echo "Processing lab ${labno} pc ${i}"
sshpass -p "${passwrd}" scp -r "LinLab2/IZLE" "lab${labno}pc${i}.local:~/Masaüstü/IZLE"
sshpass -p "${passwrd}" ssh -o StrictHostKeyChecking=no "lab${labno}pc${i}.local" "echo ${passwrd} | sudo -S chmod +x ~/Masaüstü/IZLE"
done

