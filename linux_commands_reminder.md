ls - l => Normal listeleme gibi ama detaylı

ls -al => Gizli öğelerle birlikte yukarıda işlevede çalışıyor.

pwd => Hangi lokasyonda olduğunu gösterir.

touch file_name => istenilen dosyanın oluşturulmasında işe yarar.

nano file_name => istenilen dosyanın oluşturulmasında işe yarar ve düzenleme yapılır

cat >> file_name =>  istenilen dosyanın oluşturulmasında işe yarar, basit düzeyde düzenleme yapmaya izin verir ( genellikle copy paste'de kullanılıyorum.)

vim file_name => istenilen dosyanın oluşturulmasında işe yarar ve düzenleme yapılır. (press escape and write :wq)

sudo passwd your_username => Şifreni değiştir

whatis program_name => Programın ne işe yaradığını söyler.

which program_name => Default olan programın yüklü olduğu yeri söyler.

whereis program_name => Programın yüklü olduğu yeri söyler.

zip file.zip file => İstenileni ziple.

unzip file.zip =>  İstenilen dosyayı zipden çıkar.

cmp file1 file2 => İstenilen iki dosyayı karşılaştırır. Sadece line bazlı bir çıktı üretir bir nevi göstergedir.

diff file1 file2 => İstenilen iki dosyayı karşılaştırır. Tam olarak farkın ne olduğunu söyler ve gösterir.

sudo find / -name "deneme*" => Bütün lokasyonlarda deneme'nin geçtiği dosyaları veya yolları arar.

sudo find . -type f -name ".*" => Gizli olan dosyaları bulur.

find . -type f -empty => Boş olan dizinleri listeler.

ip address | grep eth0 | grep inet | awk '{print $2}' => Ip bilgilerinden sadece ip adresini çek. 

uname -a => Kernel sürümünü öğren.

neofetch (package) => İşletim sistemi ve sistemin için gerekli bütün bilgileri sunar.

free => Bellek kullanımı ile birlikte detaylarını gösterir.

df -H => Diskinde ne kadar boş alanın olduğunu gösterir.

ps -aux => Arkaplanda işleyen uygulamaları ve detaylarını gösterir.

ps -aux | grep python => Arkaplanda işleyen istenilen uygulamanın bulunmasını sağlar.

kill -9 pid => Bulunan uygulama pid'si ile uygulamayı sonlandırır.

pkill -f app_name => Uygulamayı direkt sonlandırır.

sudo shutdown -h now => Sistemi şimdi sonlandırır.
