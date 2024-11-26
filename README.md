# Basit-Yedekle
 
# Rsync Yedekleme Scripti

Bu bash scripti, `rsync` komutunu kullanarak dosya veya klasörleri yedeklemenizi sağlar. Yerel makineye veya uzaktaki bir makineye yedekleme seçeneği sunar ve kullanıcıdan hedef bilgilerini alarak otomatik olarak işlem yapar. Script, `cron` ile otomatikleştirilebilir, böylece düzenli aralıklarla yedekleme yapılabilir.

## Kullanım
1. Script çalıştırıldığında, yedekleme yapılacak yer (yerel veya uzak) seçilir.
2. Dosya veya klasörün yedekleneceği hedef yol kullanıcı tarafından belirtilir.
3. Uzak makinaya yedekleme seçilirse, kullanıcı adı ve IP adresi gibi bilgiler istenir.

**Özellikler:**
- `rsync -avz`: Dosyaları arşiv modunda, ayrıntılı çıktıyla ve sıkıştırarak aktarır.
- `-e ssh`: Uzak bağlantı için SSH kullanılır.

**Kurulum ve Otomasyon**
- Bu scripti bir cron işi olarak zamanlayarak otomatik yedeklemeler oluşturabilirsiniz.

**Örnek Kullanım**
```bash
./yedekleyici.sh
