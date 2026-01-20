# Project-Based Internship: Big Data Analytics Kimia Farma

## **Pendahuluan**
Proyek ini merupakan bagian dari program **Project-Based Internship** antara **Rakamin Academy** dengan **Kimia Farma**. Sebagai seorang **Big Data Analytics Intern**, tugas utama saya adalah melakukan evaluasi terhadap kinerja bisnis Kimia Farma selama periode tahun 2020 hingga 2023.

## **Tujuan Proyek**
Tujuan utama dari analisis ini adalah untuk memberikan pemahaman mendalam mengenai kinerja bisnis perusahaan, yang mencakup:
* Mengimpor dan mengelola dataset ke dalam **Google BigQuery**.
* Membuat tabel analisa agregat berdasarkan data transaksi, inventaris, cabang, dan produk.
* Memvisualisasikan tren bisnis dan metrik keuangan melalui dashboard di **Google Looker Studio**.

## **Dataset yang Digunakan**
Analisis ini menggunakan empat dataset utama yang disimpan dalam format CSV:
1. **`kf_final_transaction`**: Data detail transaksi penjualan.
2. **`kf_inventory`**: Data stok dan inventaris produk obat.
3. **`kf_kantor_cabang`**: Informasi detail mengenai lokasi dan rating cabang Kimia Farma.
4. **`kf_product`**: Informasi mengenai daftar produk obat dan harganya.

## **Logika Bisnis: Persentase Gross Laba**
Dalam menghitung keuntungan bersih (`nett_profit`), diterapkan logika persentase laba berdasarkan kategori harga produk sebagai berikut:
* Harga <= Rp 50.000 -> laba 10%.
* Harga > Rp 50.000 - 100.000 -> laba 15%.
* Harga > Rp 100.000 - 300.000 -> laba 20%.
* Harga > Rp 300.000 - 500.000 -> laba 25%.
* Harga > Rp 500.000 -> laba 30%.

## **Fitur Dashboard Performance Analytics**
Dashboard yang dibuat mencakup visualisasi kunci untuk membantu pengambilan keputusan:
* **Judul Dashboard**
* **Summary Dashboard**
* **Filter Control** 
* **Snapshot Data** 
* **Perbandingan Pendapatan Kimia Farma dari tahun ke tahun** 
* **Top 10 Total transaksi cabang provinsi**
* **Top 10 Nett sales cabang provinsi**
* **Top 5 Cabang Dengan Rating Tertinggi, namun Rating Transaksi Terendah** 
* **Indonesia's Geo Map Untuk Total Profit Masing-masing Provinsi** 

## **Teknologi yang Digunakan**
* **Database Management**: Google BigQuery.
* **Data Visualization**: Google Looker Studio.
* **Version Control**: GitHub.
