for i in {1..53}
do
echo "Processing pc ${i}"
sshpass -p 'btubm2021' ssh -o StrictHostKeyChecking=no "lab2pc${i}.local" 'mkdir VNC'
sshpass -p 'btubm2021' scp -o StrictHostKeyChecking=no "WinLab2/viewer.exe" "lab2pc${i}.local:VNC/viewer.exe"
sshpass -p 'btubm2021' scp -o StrictHostKeyChecking=no "WinLab2/vncopt.vnc" "lab2pc${i}.local:VNC/vncopt.vnc"
sshpass -p 'btubm2021' scp -o StrictHostKeyChecking=no "IZLE.bat" "lab2pc${i}.local:Desktop/IZLE.bat"
done

