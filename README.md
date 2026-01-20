# Project-Based Internship: Big Data Analytics Kimia Farma

## **Pendahuluan**
Proyek ini merupakan bagian dari program **Project-Based Internship** antara **Rakamin Academy** dengan **Kimia Farma**. [cite_start]Sebagai seorang **Big Data Analytics Intern**, tugas utama saya adalah melakukan evaluasi terhadap kinerja bisnis Kimia Farma selama periode tahun 2020 hingga 2023. [cite: 1, 2, 3, 5]

## **Tujuan Proyek**
Tujuan utama dari analisis ini adalah untuk memberikan pemahaman mendalam mengenai kinerja bisnis perusahaan, yang mencakup:
* [cite_start]Mengimpor dan mengelola dataset ke dalam **Google BigQuery**. [cite: 20]
* [cite_start]Membuat tabel analisa agregat berdasarkan data transaksi, inventaris, cabang, dan produk. [cite: 27, 28]
* [cite_start]Memvisualisasikan tren bisnis dan metrik keuangan melalui dashboard di **Google Looker Studio**. [cite: 62]

## **Dataset yang Digunakan**
[cite_start]Analisis ini menggunakan empat dataset utama yang disimpan dalam format CSV: [cite: 21]
1. [cite_start]**`kf_final_transaction`**: Data detail transaksi penjualan. [cite: 22]
2. [cite_start]**`kf_inventory`**: Data stok dan inventaris produk obat. [cite: 23]
3. [cite_start]**`kf_kantor_cabang`**: Informasi detail mengenai lokasi dan rating cabang Kimia Farma. [cite: 24]
4. [cite_start]**`kf_product`**: Informasi mengenai daftar produk obat dan harganya. [cite: 25]

## **Logika Bisnis: Persentase Gross Laba**
[cite_start]Dalam menghitung keuntungan bersih (`nett_profit`), diterapkan logika persentase laba berdasarkan kategori harga produk sebagai berikut: [cite: 48, 49]
* [cite_start]Harga <= Rp 50.000 -> laba 10%. [cite: 50]
* [cite_start]Harga > Rp 50.000 - 100.000 -> laba 15%. [cite: 51]
* [cite_start]Harga > Rp 100.000 - 300.000 -> laba 20%. [cite: 52]
* [cite_start]Harga > Rp 300.000 - 500.000 -> laba 25%. [cite: 53]
* [cite_start]Harga > Rp 500.000 -> laba 30%. [cite: 53]

## **Fitur Dashboard Performance Analytics**
Dashboard yang dibuat mencakup visualisasi kunci untuk membantu pengambilan keputusan:
* [cite_start]**Judul Dashboard** [cite: 65]
* [cite_start]**Summary Dashboard** [cite: 66]
* [cite_start]**Filter Control** 
* [cite_start]**Snapshot Data** 
* [cite_start]**Perbandingan Pendapatan Kimia Farma dari tahun ke tahun** 
* [cite_start]**Top 10 Total transaksi cabang provinsi** [cite: 70]
* [cite_start]**Top 10 Nett sales cabang provinsi** [cite: 71]
* [cite_start]**Top 5 Cabang Dengan Rating Tertinggi, namun Rating Transaksi Terendah** 
* [cite_start]**Indonesia's Geo Map Untuk Total Profit Masing-masing Provinsi** 

## **Teknologi yang Digunakan**
* [cite_start]**Database Management**: Google BigQuery. [cite: 100, 165]
* [cite_start]**Data Visualization**: Google Looker Studio. [cite: 120, 188]
* [cite_start]**Version Control**: GitHub. [cite: 112, 176]
