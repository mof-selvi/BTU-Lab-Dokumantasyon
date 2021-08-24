
# BTU BM Lab Kurulum Dökümantasyonu (\*düzenleniyor)
**Bursa Teknik Üniversitesi Bilgisayar Mühendisliği bölüm laboratuvarlarındaki bilgisayarların kurulum aşamaları**

- [Windows yüklemesi](WindowsYuklemesi.md)

- Windows için
	- OpenSSH Server
	- Chocolatey
	- Visual Studio Enterprise (.Net, C++, Nodejs, Python ve Unity araçları ile)
	yüklenir

Visual Studio lisansı ve Windows 10 Pro lisansı girilir.

- Windows Unity yüklemesi için Unity Hub indirilir ve son Unity Editor LTS sürümü yüklenir. Unity Hub indirme problemini gidermek için Windows güvenlik ayarlarına istisna eklenir. [Çözüm sayfası](https://forum.unity.com/threads/unity-hub-not-installing-the-editor-on-windows-10.724400/#post-5169140)

- Disk bölme işlemi Windows içi araçla yapılır

	 > 150GB Windows

	 > 100GB Linux Mint

- Linux Mint kurulur (2GB swap için ayrılarak).
	Kullanıcı adı

	> bilmuh

	cihaz adı

	> lab2pc1

	şeklinde ayarlanır. (İmaj yüklemelerinde sadece cihaz adı değiştirilir.)

- BTU logolu arkaplanlar yerleştirildi

- Linux'ta apt update&upgrade işlemleri sonrası giden GRUB ekranı için ayarlar:

	```
	sudo nano /etc/default/grub
	```

	ile nano üzerinden

	> GRUB_TERMINAL=console

	satırı aktif edilir ve

	```
	sudo update-grub
	```

	yapılır.

- [Windows & Linux gerekli ortak programların yüklenmesi](OrtakProgramlar.md)

- Disk imajı alabilmek için Windows'un hızlı başlatma özelliği (hibernate) kapatılır. PS'de yönetici modunda:

	 ```
	 powercfg -h off
	 ```

 	(Ayarlar kısmındaki arayüzden iptal etmek işe yaramayacaktır.)

- Rescuezilla ile full disk backup'ı alınır.

- Backup imajının yeni makinede restore edilmesinin ardından GRUB ekranının gelmesi için
   
	 - Windows'ta yönetici olarak cmd ile (ps'de çalışmıyor):

		```
		bcdedit /set {bootmgr} path \EFI\ubuntu\grubx64.efi
		```

	- Yaptıktan sonra F12 ile Linux'a (ubuntu yazıyor) boot edip shellden
		```
		sudo update-grub
		```
		yapılır.

   
- Imaj yükleme işleminin ardından hem Windows hem de Linux içerisinde
 bilgisayar adını, numarasına uygun şekilde değiştirmek SSH
 bağlantısının sorunsuz kurulabilmesi için gereklidir.

- Hem shell'de hem de powershell'de
	```
	ssh bilmuh@lab2pc1.local
	```
	komutu 2. lab 1. bilgisayara bağlanılabilir. Fakat önceki güvenlik anahtarlarını silmek gerekebilmektedir.
  
	Linuxta:

	```
	rm ~/.ssh/known_hosts
	```

	Windowsta

	```
	rm .\.ssh\known_hosts
	```

   


