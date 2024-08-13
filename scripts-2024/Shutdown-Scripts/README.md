# Toplu Cihaz Kapama Scriptleri

- Topluca öğrenci bilgisayarlarını kapatmak istediğimiz labın hoca bilgisayarını Linux'ta başlatıyoruz.
- Bu dizinde bulunan `LABX-Lin-Shutdown.sh` ve `LABX-Win-Shutdown.sh` dosyalarından lab numarasına uyanları `home/bilmuh/scripts` gibi uygun bir dizine indirip kaydediyoruz.
  > Dikkat! Lab numarasına bilgisayarların üzerindeki etiketten bakılabilir. Hoca bilgisayarları `labXteacher`, öğrenci bilgisayarları `labXpc1` formatında isimlendirilmiştir.
- İki shell scriptine de ayrı ayrı sağ tıklayıp özelliklerden çalıştırma izni veriyoruz. (Alternatif olarak chmod kullanılabilir.)
- Önce tüm öğrenci bilgisayarlarını Linux'ta başlatıp hoca bilgisayarından `LABX-Lin-Shutdown.sh` dosyasını çalıştırıyoruz.
  - Kapanmamış öğrenci bilgisayarlarında ağ veya makine ismi hatası var demektir.
  - Kapanmayan bilgisayarlarda makine ismi kontrolü yapıp bunları manuel olarak kapatıyoruz.
- Ardından tüm öğrenci bilgisayarlarını bu defa Windows'ta başlatıp hoca bilgisayarından `LABX-Win-Shutdown.sh` dosyasını çalıştırıyoruz.
  - Kapanmamış öğrenci bilgisayarlarında ağ veya makine ismi hatası var demektir.
  - Kapanmayan bilgisayarlarda makine ismi kontrolü yapıp bunları manuel olarak kapatıyoruz.
