labno='2'
pcnum=53
passwrd='btubm2022'

# for i in {1..$pcnum}
for ((i=1; i<=$pcnum; i++))
do
echo "Processing lab ${labno} pc ${i}"
sshpass -p "${passwrd}" ssh -o StrictHostKeyChecking=no "lab${labno}pc${i}.local" "echo ${passwrd} | sudo -S apt install xtightvncviewer -y"
done

