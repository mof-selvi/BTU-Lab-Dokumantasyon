for i in {1..53}
do
echo "Processing pc ${i}"
sshpass -p 'btubm2021' ssh -o StrictHostKeyChecking=no "lab2pc${i}.local" 'echo btubm2021 | sudo -S apt install xtightvncviewer -y'
done

