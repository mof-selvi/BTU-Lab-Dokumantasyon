labno='2'
pcnum=53
passwrd='btubm2022'

for i in {1..$pcnum}
do
echo "Processing lab ${labno} pc ${i}"
sshpass -p "${passwrd}" ssh -o StrictHostKeyChecking=no "lab${labno}pc${i}.local" 'mkdir VNC'
sshpass -p "${passwrd}" scp -o StrictHostKeyChecking=no "viewer.exe" "lab${labno}pc${i}.local:VNC/viewer.exe"
sshpass -p "${passwrd}" scp -o StrictHostKeyChecking=no "vncopt.vnc" "lab${labno}pc${i}.local:VNC/vncopt.vnc"
sshpass -p "${passwrd}" scp -o StrictHostKeyChecking=no "IZLE.bat" "lab${labno}pc${i}.local:Desktop/IZLE.bat"
done

