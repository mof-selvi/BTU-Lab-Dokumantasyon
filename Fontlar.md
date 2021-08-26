- Linux'ta /media/bilmuh dizinine gidilir.

- Windows'un yüklü olduğu disk bölümünün mount edildiği dizin adı öğrenilir (Örn: E2B067A0B06779C5).

- Windows klasöründeki fontlar Linux font klasörüne aktarılır.
  ```
  sudo cp -R /media/bilmuh/E2B067A0B06779C5/Windows/Fonts /usr/share/fonts/WindowsFonts/
  ```

- Yeni oluşturulan WindowsFonts dizinine erişim izni verilir.
  ```
  sudo chmod 755 /usr/share/fonts/WindowsFonts/*
  ```

- Font önbelleği güncellenir.
  ```
  fc-cache
  ```

- LibreOffice gibi sistemde yüklü fontları kullanan bir program ile Arial vb. Microsoft fontları test edilir. Listede bulunuyorsa font aktarım işlemi başarılıdır.

