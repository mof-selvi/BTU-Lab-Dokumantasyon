labno='3'
pcnum=52
passwrd='btubm2022'

for i in {1..$pcnum}
do
echo "Processing lab ${labno} pc ${i}"
sshpass -p "${passwrd}" ssh -o StrictHostKeyChecking=no "lab${labno}pc${i}.local" "echo ${passwrd} | sudo -S apt install xtightvncviewer -y"
done

