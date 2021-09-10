
# BTU BM Lab Kurulum Dökümantasyonu
**Bursa Teknik Üniversitesi Bilgisayar Mühendisliği bölüm laboratuvarlarındaki bilgisayarların kurulum aşamaları**

# Imaj oluşturma

- [Windows yüklemesi](WindowsYuklemesi.md)

- Windows için

	- OpenSSH Server
	- Chocolatey
	- Visual Studio Enterprise (.Net, SQL, C++, Nodejs, Python ve Unity araçları ile)
	- IIS (Denetim masası \> Programlar \> Windows özelliklerini aç veya kapat)
	- SQL Server
	
	yüklenir. *(Visual Studio ve SQL Server, Azure portalından lisanslı olarak indirilir.)*

- Visual Studio lisansı ve Windows 10 Pro lisansı girilir.

- Windows Unity yüklemesi için Unity Hub indirilir ve son Unity Editor LTS sürümü yüklenir. Unity Hub indirme problemini gidermek için Windows güvenlik ayarlarına istisna eklenir. [Unity Hub İndirme Hatası Çözümü](UnityHubFix.md)

- Disk bölme işlemi Windows içi araçla yapılır

	 > 150GB Windows

	 > 100GB Linux Mint

- Linux Mint kurulur (2GB swap için ayrılarak).
	Kullanıcı adı

	> bilmuh

	cihaz adı

	> lab2pc1

	şeklinde ayarlanır. (İmaj yüklemelerinde sadece cihaz adı değiştirilir.)

- [BTU logolu arkaplan](btu.png) yerleştirilir.

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

- [Windows fontlarının Linux'a yüklenmesi](Fontlar.md)

- Disk imajı alabilmek için Windows'un hızlı başlatma özelliği (hibernate) kapatılır. PS'de yönetici modunda:

	 ```
	 powercfg -h off
	 ```

 	(Ayarlar kısmındaki arayüzden iptal etmek işe yaramayacaktır.)

- Rescuezilla ile full disk backup'ı alınır.







# Oluşturulan imajın diğer bilgisayarlara aktarımı

- Backup imajının yeni makinede restore edilmesinin ardından GRUB ekranının gelmesi için
   
	 - Windows'ta C:\ ana dizininde bulunan [SetupWindows](SetupWindows) klasöründeki .bat dosyası yönetici olarak çalıştırılır. Yeni bilgisayar ismi girildikten sonra bilgisayar kapatılır.
	 - Linux'ta bilmuh dizininde [SetupLinux.sh](SetupLinux.sh) dosyası çalıştırılır. Yeni bilgisayar ismi girilir.
	 
	 
	 	> Alternatif olarak:
	 	> - Yaptıktan sonra F12 ile Linux'a (ubuntu yazıyor) boot edip shellden
	 	> - 
		>	```
		>	sudo update-grub
		>	```
		>	yapılır.
		>	
		> - Imaj yükleme işleminin ardından hem Windows hem de Linux içerisinde
		> bilgisayar adını, numarasına uygun şekilde değiştirmek SSH
		> bağlantısının sorunsuz kurulabilmesi için gereklidir.
		>	- Linux'ta:
		>		```
		>		sudo nano /etc/hosts
		>		```
		>		ile hosts dosyasındaki eski isim yerine lab2pc2 ve
		>		```
		>		sudo hostnamectl set-hostname lab2pc2
		>		```
		>		komutu ile lab2pc2 host ismi verilirse, bilgisayar ağda lab2pc2 olarak görünmeye başlayacaktır.
		>	- Windows'ta:
		>		Ayarlardan bilgisayar adını değiştir butonunu kullanıp yeniden başlatılır.

- Hem shell'de hem de powershell'de
	```
	ssh bilmuh@lab2pc1.local
	```
	komutu 2. lab 1. bilgisayara bağlanılabilir. Fakat önceki güvenlik anahtarlarını silmek gerekebilmektedir.
  
	Linux'ta:

	```
	rm ~/.ssh/known_hosts
	```

	Windows'ta

	```
	rm .\.ssh\known_hosts
	```

   



- Windows'ta .ps1 dosyalarının Powershell'de çalıştırılabilmesi için yönetici olarak Powershell'de:
 ```
 Set-ExecutionPolicy RemoteSigned
 ```
 
 çalıştırılır. Bu işlem şu komutla geri alınabilir:
 ```
 Set-ExecutionPolicy Restricted
 ```
 

