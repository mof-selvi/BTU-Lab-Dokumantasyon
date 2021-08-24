
# BTU-Lab-Dokumantasyon (\*düzenleniyor)
**Bursa Teknik Üniversitesi Bilgisayar Mühendisliği bölüm laboratuvarlarındaki bilgisayarların kurulum aşamaları**

 - [Windows yüklemesi](WindowsYuklemesi.md)
   
 - Windows için OpenSSH Server, Chocolatey ve Visual Studio Enterprise
   (.Net, C++, Nodejs, Python ve Unity araçları ile) yüklendi, VS
   lisansı ve Windows 10 Pro lisansları girildi
   
 -  Windows Unity yüklemesi için Unity Hub indirilir ve son Unity Editor LTS sürümü yüklenir. Unity Hub indirme problemini gidermek için Windows güvenlik ayarlarına istisna eklenir. [Çözüm sayfası](https://forum.unity.com/threads/unity-hub-not-installing-the-editor-on-windows-10.724400/#post-5169140)

 - Disk bölme işlemi Windows içi araçla yapıldı (150GB Windows + 100GB
   Linux Mint)
 
 - Linux Mint kuruldu (2GB swap için ayrılarak) Kullanıcı adı bilmuh,
   cihaz adı lab2pc11 şeklinde ayarlandı. (Yeni yüklemelerde sadece
   cihaz adı değiştirilecek.)
 
 - BTU logolu arkaplanlar yerleştirildi
 
 - Linux'ta apt update&upgrade işlemleri sonrası giden GRUB ekranı için
   ayar yapıldı:
   ```sudo nano /etc/default/grub```
   ile nano üzerinden
	> GRUB_TERMINAL=console

	 satırı aktif edildi ve
	 ```sudo update-grub```
	 yapıldı
 
 -  [Windows & Linux gerekli ortak programların yüklenmesi](OrtakProgramlar.md)
 
 - Disk imajı alabilmek için Windows'un hızlı başlatma özelliği
   (hibernate) kapatıldı, ps'de yönetici modunda: powercfg -h off
   (ayarlar kısmındaki arayüzden iptal etmek işe yaramıyor)
   
 - Rescuezilla ile full disk backup'ı alındı, backup imajında disk
   bölmelendirme bilgileri de mevcut (clone'lama işlemi farklı
   boyutlardaki disklerde çalışmıyor)
   
 - Backup imajının yeni makinede restore edilmesinin ardından GRUB
   ekranının gelmesi için
   
	 - Windows'ta yönetici olarak cmd ile (ps'de çalışmıyor):
 ```bcdedit /set {bootmgr} path \EFI\ubuntu\grubx64.efi```
      
    - Yaptıktan sonra F12 ile Linux'a (ubuntu yazıyor) boot edip shellden    sudo update-grub yapmak gerekiyor.

   
 - Imaj yükleme işleminin ardından hem Windows hem de Linux içerisinde
   bilgisayar adını numarasına uygun şekilde değiştirmek SSH
   bağlantısının sorunsuz kurulabilmesini sağlıyor
 - Hem shell'de hem de powershell'de ```ssh bilmuh@lab2pc1.local``` komutu 2.
   lab 1. bilgisayara bağlanabilmek için yeterli oluyor. Fakat önceki
   güvenlik anahtarlarını silmek gerekiyor.
   
   Linuxta:
   
	```rm ~/.ssh/known_hosts```

   Windowsta
   
  	 ```rm .\.ssh\known_hosts```

   


