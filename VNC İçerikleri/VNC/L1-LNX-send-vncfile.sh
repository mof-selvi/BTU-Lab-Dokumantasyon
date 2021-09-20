for i in {1..51}
do
echo "Processing pc ${i}"
sshpass -p 'btubm2021' scp -r "LinLab2/IZLE" "lab1pc${i}.local:~/Masaüstü/IZLE"
sshpass -p 'btubm2021' ssh -o StrictHostKeyChecking=no "lab1pc${i}.local" 'echo btubm2021 | sudo -S chmod +x ~/Masaüstü/IZLE'
done

