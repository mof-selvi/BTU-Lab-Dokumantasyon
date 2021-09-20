for i in {1..51}
do
echo "Processing pc ${i}"
sshpass -p 'btubm2021' ssh -o StrictHostKeyChecking=no "lab1pc${i}.local" 'echo btubm2021 | sudo -S apt install xtightvncviewer -y'
done

