# Modul2_Probstat_5025211161

## Nomor 1
Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴 
![image](https://user-images.githubusercontent.com/90295688/207303915-f1e8e174-4f9f-4a65-85c2-bee0c2d5ba2a.png)

Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen  dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah melakukan aktivitas 𝐴 sebanyak 70.
### a) Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas
Pertama-tama data disimpan terlebih dahulu, di mana untuk data sebelum aktivitas disimpan ke dalam X sementara data setelah aktivitas disimpan ke dalam Y. Setelah itu, standar deviasi dicari menggunakan fungsi sd().

![image](https://user-images.githubusercontent.com/90295688/207306411-70d67707-eb06-437b-8002-7a6c0eea9867.png)

### b) carilah nilai t (p-value)
P-value dapat diperoleh dengan menggunakan fungsi t.test

![image](https://user-images.githubusercontent.com/90295688/207308177-8736976d-3b38-43a2-b94f-4ef79fa4bda0.png)

### c) tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”
Karena dari poin (b) diperoleh nilai p-value = 6.003e-05 lebih kecil daripada 𝛼 = 0.05, maka dapat diambil kesimpulan untuk menolak hipotesis nol (H0) dan menerima hipotesis alternatif (H1). Hal ini berarti ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴.

<br>

## Nomor 2 (Hipotesa 1 Sampel)
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan library seperti referensi pada modul). 

### a) Apakah Anda setuju dengan klaim tersebut?
Setuju. Karena klaim pada soal disebutkan bahwa mobil dikemudikan rata-rata lebih dari 20.000 km/tahun, sementara dari sampel acak untuk 100 pemilik mobil diperoleh rata-rata jarak tempuh sebesar 23.500 km/tahun. Dengan demikian dapat dikatakan bahwa klaim tersebut valid.

### b) Jelaskan maksud dari output yang dihasilkan! 
Pertama-tama install terlebih dahulu library BSDA.

```r
install.packages("BSDA")
library(BSDA)
```
Kemudian digunakan fungsi tsum.test() dengan menggunakan 3 buah parameter (mean, standar deviasi, dan jumlah sampel) seperti yang diberikan pada soal.

![image](https://user-images.githubusercontent.com/90295688/207315583-bdf66d38-54f8-44b4-9851-27b3a3e6c022.png)

Output yang dihasilkan menunjukkan _Confidence Interval_ sebesar 95% serta rata-rata jarak mobil dikemudikan tiap tahunnya berada di antara 22726.16 km hingga 24273.84 km, sehingga klaim pada soal yang menyebutkan bahwa mobil dikemudikan rata-rata lebih dari 20.000 km/tahun adalah benar.

### c) Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!
Karena dari poin (b) diperoleh nilai p-value < 2.2e-16 lebih kecil daripada 𝛼 = 0.05, maka dapat diambil kesimpulan untuk menolak hipotesis nol (H0) dan menerima hipotesis alternatif (H1). Hal ini berarti mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun.

<br>

## Nomor 3 (Hipotesa 2 Sampel)
Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.

![image](https://user-images.githubusercontent.com/90295688/207319533-bedec06d-ecc0-4cb7-97b0-19cdd2ebecc5.png)

Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α= 0.05)? Buatlah :

### a) H0 dan H1
H0 : μ1 = μ2 (rata-rata saham di Bandung sama dengan rata-rata saham di Bali) <br>
H1 : μ1 ≠ μ2 (rata-rata saham di Bandung tidak sama dengan rata-rata saham di Bali)

### b) Hitung Sampel Statistik
Sampel statistik diperoleh menggunakan fungsi tsum.test() dengan menggunakan 3 buah parameter (mean, standar deviasi, dan jumlah sampel) seperti yang diberikan pada soal.

![image](https://user-images.githubusercontent.com/90295688/207323779-3908316d-b9e6-409e-be95-523955b1341a.png)


### c) Lakukan Uji Statistik (df = 2)
Pertama-tama install terlebih dahulu library mosaic.

```r
install.packages("mosaic")
library(mosaic)
```

Kemudian digunakan fungsi plotDist() untuk menggambarkan visualisasi sampel statistik berderajat bebas 2 sebagai berikut.

```r
plotDist(dist = 't', df = 2, col = "brown")
```

![image](https://user-images.githubusercontent.com/90295688/207340613-9c5fe6f5-392d-4c06-a15f-fdba0bd02932.png)

### d) Nilai Kritikal
Nilai kritikal diperoleh dengan menggunakan fungsi qchisq() dengan nilai df = 2.

![image](https://user-images.githubusercontent.com/90295688/207343643-2241382d-2411-4d4d-a081-147050dc006f.png)

### e) Keputusan
Karena dari poin (b) diperoleh nilai p-value = 0.03024 lebih kecil daripada 𝛼 = 0.05, maka dapat diambil keputusan untuk menolak hipotesis nol (H0) dan menerima hipotesis alternatif (H1).

### f) Kesimpulan
Karena H0 ditolak dan H1 diterima, maka dapat disimpulkan bahwa rata-rata saham di Bandung tidak sama dengan rata-rata saham di Bali.

<br>

## Nomor 4 (Anova Satu Arah) 
Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya ia mengumpulkan data  tiga spesies kucing yaitu kucing oren, kucing hitam dan kucing putih dengan panjangnya masing-masing. 
Jika : 

diketahui dataset  https://intip.in/datasetprobstat1 
H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama    

Maka Kerjakan atau Carilah:
### a) Buatlah masing masing jenis spesies menjadi  3 subjek "Grup" (grup 1,grup 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.

Pertama-tama data diambil terlebih dahulu dari dataset yang telah disediakan.

```r
data <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"), h = T)
```

Kemudian dibuat grup untuk tiap spesies yang berbeda serta dilakukan pengecekan untuk data pada tiap grup

![image](https://user-images.githubusercontent.com/90295688/207354977-a52a187b-ea56-4aa1-b0c9-fd9a9bb6f459.png)

Data kemudian dikelompokkan sesuai dengan label pada grup.

![image](https://user-images.githubusercontent.com/90295688/207355715-4ad8b4dd-2817-470b-b6a5-002f192748b1.png)

Plot kuantil normal dapat diperoleh dengan menggunakan fungsi qnorm() dan qqline().

```r
qqnorm(Group1$Length)
qqline(Group1$Length)
```
![image](https://user-images.githubusercontent.com/90295688/207356157-247da6d0-1b89-412e-b19d-255dac588498.png)

```r
qqnorm(Group2$Length)
qqline(Group2$Length)
```
![image](https://user-images.githubusercontent.com/90295688/207356433-50b2d1be-19c9-402a-91ef-434858ed551e.png)

```r
qqnorm(Group3$Length)
qqline(Group3$Length)
```
![image](https://user-images.githubusercontent.com/90295688/207356507-12d06b07-ae4a-4caa-803b-d1d04b517d21.png)

### b) carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?

Homogeneity of variances dapat diperoleh dengan menggunakan fungsi barlett.test()

![image](https://user-images.githubusercontent.com/90295688/207356889-e11c1a06-aa55-4bdf-8c08-352c20abcd0d.png)

### c) Untuk uji ANOVA, buatlah model linier dengan Panjang versus Grup dan beri nama model tersebut model 1.

Uji ANOVA dan model linier dapat diperoleh dengan menggunakan fungsi lm() dan anova()

![image](https://user-images.githubusercontent.com/90295688/207357249-4abb90b9-b293-402d-b002-c39a9afd6c8b.png)

### d) Dari Hasil Poin C , Berapakah nilai-p ? ,  Apa yang dapat Anda simpulkan dari H0?

Diperoleh p-value = 0.0013, di mana p-value < 𝛼 = 0.05. Sehingga dapat diambil keputusan untuk menolak hipotesis nol (H0) dan menerima hipotesis alternatif (H1). Hal ini berarti terdapat perbedaan panjang antara ketiga spesies.

### e) Verifikasilah jawaban model 1 dengan Post-hooc test TukeyHSD ,  dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan.

Verifikasi jawaban dengan Post-hooc test TukeyHSD dapat diperoleh dengan menggunakan fungsi tukeyHSD()

![image](https://user-images.githubusercontent.com/90295688/207358694-c54005c2-0709-49e7-9d5f-18ea1532ed22.png)

Dari hasil verifikasi tersebut dapat dilihat bahwa pada 𝛼 = 5%, perbedaan panjang kucing yang signifikan terletak di antara grup 2 (Kucing Hitam) dan grup 1 (Kucing Oren) serta grup 3 (Kucing Putih) dan grup 2 (Kucing Hitam). Sementara grup 3 (Kucing Putih) dan grup 1 (Kucing Oren) memiliki panjang yang relatif sama.

### f) Visualisasikan data dengan ggplot2
Pertama-tama install terlebih dahulu library ggplot2.

```r
install.packages("ggplot2")
library("ggplot2")
```

Kemudian visualisasi data dapat diperoleh dengan menggunakan ggplot()

```r
ggplot(data, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey", colour = "black") + scale_x_discrete() + xlab("Treatment Group") + ylab("Length (cm)")
```
![image](https://user-images.githubusercontent.com/90295688/207360614-469c2174-9715-4bfa-8be9-1fbfd7f13c78.png)

<br>

## Nomor 5 (Anova Dua Arah) 
Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut: Data Hasil Eksperimen. Dengan data tersebut: 

### a) Buatlah plot sederhana untuk visualisasi data 

Pertama-tama install terlebih dahulu library multcompView dan run library yang diperlukan

```r
install.packages("multcompView")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)
```

Kemudian ambil data yang telah disediakan

![image](https://user-images.githubusercontent.com/90295688/207362037-6867aabc-6336-4f7b-9279-3527b1c4dcec.png)

Observasi data diperoleh dengan menggunakan fungsi str()

![image](https://user-images.githubusercontent.com/90295688/207362540-a6fe99f2-f20b-4f96-a72a-8593b51f42fb.png)

Visualisasi dengan _simple plot_ diperoleh dengan menggunakan fungsi qplot()

```r
qplot(x = Temp, y = Light, geom = "point", data = GTL) + facet_grid(.~Glass, labeller = label_both)
```

![image](https://user-images.githubusercontent.com/90295688/207363205-5feaf45d-8e49-4929-9a67-53f6b60cf291.png)


### b) Lakukan uji ANOVA dua arah untuk 2 faktor

Pertama-tama dibuat variabel as.factor sebagai anova dan kemudian dilakukan observasi data.

![image](https://user-images.githubusercontent.com/90295688/207363783-a52accfd-8696-49ad-af5c-0acd0333effe.png)

Analysis of variance dapat diperoleh dengan menggunakan fungsi summary(aov())

![image](https://user-images.githubusercontent.com/90295688/207364257-88d69884-d3af-44a2-9cd9-4c7ce9feeaf8.png)

### c) Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)

Hal ini dapat diperoleh dengan menggunakan fungsi group_by() dan summarise() sesuai dengan mean dan standar deviasi yang telah diketahui

![image](https://user-images.githubusercontent.com/90295688/207364819-3d32ee1c-9361-4385-ad87-a1b70179eff2.png)

### d) Lakukan uji Tukey

Uji Tukey dapat dilakukan dengan menggunakan fungsi tukeyHSD()

![image](https://user-images.githubusercontent.com/90295688/207365194-b0d23e91-8c15-487d-a015-b72b9ed10740.png)

### e) Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey

Pertama-tama _compact letter display_ dibuat terlebih dahulu menggunakan fungsi multcompLetters4()

![image](https://user-images.githubusercontent.com/90295688/207365725-01da8b73-83b0-47e4-a737-062bef09d1aa.png)

_Compact letter display_ tersebut kemudian ditambahkan ke dalam tabel dengan mean dan standar deviasi yang telah dibuat

![image](https://user-images.githubusercontent.com/90295688/207366115-cb510d23-33d9-45a2-b0a8-af1e01aa16a6.png)
