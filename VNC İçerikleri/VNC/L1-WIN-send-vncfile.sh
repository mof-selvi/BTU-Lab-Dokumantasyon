for i in {1..51}
do
echo "Processing pc ${i}"
sshpass -p 'btubm2021' ssh -o StrictHostKeyChecking=no "lab1pc${i}.local" 'mkdir VNC'
sshpass -p 'btubm2021' scp -o StrictHostKeyChecking=no "WinLab1/viewer.exe" "lab1pc${i}.local:VNC/viewer.exe"
sshpass -p 'btubm2021' scp -o StrictHostKeyChecking=no "WinLab1/vncopt.vnc" "lab1pc${i}.local:VNC/vncopt.vnc"
sshpass -p 'btubm2021' scp -o StrictHostKeyChecking=no "IZLE.bat" "lab1pc${i}.local:Desktop/IZLE.bat"
done

