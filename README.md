# TUGAS-PRAKTIKUM2-BLOKPROSEDURAL-UMINATI-ANANDARI-DEWITRI

 Tugas Praktikum 2 - Pemrograman Basis Data

 Struktur Blok Prosedural (Anonymous Block, Variabel, Konstanta, dan Tipe Data)

Anggota Kelompok

1. Uminati
   NIM: IK2411011
2. Anandari Dewitri
   NIM: IK2411032
   
 Tujuan Praktikum

* Memahami struktur dasar blok prosedural pada MySQL
* Mampu mendeklarasikan variabel dan konstanta
* Menggunakan percabangan (IF–ELSE) dalam program
* Menghasilkan output yang sistematis dan informatif
* Mengimplementasikan logika sederhana dalam studi kasus akademik
  
 📖 Deskripsi Singkat

Praktikum ini bertujuan untuk mensimulasikan proses validasi data akademik mahasiswa sebelum pengisian KRS menggunakan blok prosedural pada MySQL.

Program akan memproses data mahasiswa, menentukan validitas data, mengelompokkan beban studi, serta menilai performa akademik mahasiswa secara sistematis.


 📂 Struktur Repository

```
tugaspraktikum1-blokprosedural-namakelompok/
│
├── README.md
├── program.sql
├── laporan.pdf
└── dokumentasi/
    ├── hasil1.png
    ├── hasil2.png
    └── hasil3.png
```

---

## ⚙️ Penjelasan Program

### 🔹 Bagian A – Identitas Mahasiswa

Menampilkan data mahasiswa dari database menggunakan konstanta dan fungsi `CONCAT`.

### 🔹 Bagian B – Validasi Akademik

Melakukan pengecekan terhadap:

* Status pembayaran
* Jumlah SKS
* IPK

Kemudian menentukan:

* Status validasi data
* Kategori beban studi
* Kategori performa akademik
  
🔹 Bagian C – Kelayakan KRS
    Menggabungkan identitas dan hasil validasi untuk menentukan apakah mahasiswa layak mengambil KRS beserta alasan.
    
 🔹 Bagian D – Perbandingan Mahasiswa
     Membandingkan dua mahasiswa berdasarkan:
      * IPK
      * Jumlah SKS (jika IPK sama)

---
Skenario Pengujian
 Skenario Valid

* Status: LUNAS
* SKS: 18
* IPK: 3.20

 ❌ Skenario Tidak Valid 1

* Status: BELUM LUNAS

❌ Skenario Tidak Valid 2

* SKS: 0

 📊 Hasil

Program berhasil:

* Menampilkan identitas mahasiswa
* Memvalidasi data akademik
* Mengelompokkan kategori SKS dan IPK
* Menentukan kelayakan pengambilan KRS
* Membandingkan dua mahasiswa
  
 Pembagian Tugas

| Nama             | Tugas                                              |
| ---------------- | -------------------------------------------------- |
| Uminati          | Analisis studi kasus, Bagian A & B, logika program |
| Anandari Dewitri | Bagian C & D, output program, dokumentasi          |
| Semua anggota    | Pengujian, penyusunan laporan, dan upload GitHub   |

---

 ▶️ Cara Menjalankan Program

1. Buka **Laragon / XAMPP / phpMyAdmin**
2. Pilih menu **SQL**
3. Copy isi file `program.sql`
4. Jalankan query
5. Gunakan perintah:

   ```
   CALL bagianA_tabel();
   CALL bagianB_tabel();
   CALL bagianC_tabel();
   CALL bagianD_tabel();
   ```

 Cara Pengumpulan

* Repository dibuat dalam mode **public**
* Berisi:

  * File SQL
  * Laporan PDF
  * Screenshot hasil eksekusi
* Link repository dikumpulkan melalui LMS Edlink dengan format:

  * Nama Kelompok
  * Nama Anggota & NIM
  * Link GitHub
    
 📝 Catatan

* Program dibuat menggunakan MySQL (Laragon/XAMPP)
* Program menggunakan tabel database (`mahasiswa` dan `akademik`) untuk mensimulasikan data secara lebih realistis
* Meskipun tugas tidak mewajibkan penggunaan tabel, pendekatan ini dipilih untuk merepresentasikan sistem database secara nyata
* Fokus utama tetap pada implementasi blok prosedural, variabel, dan logika percabangan

 ✨ Penutup

Praktikum ini menjadi dasar penting dalam memahami pemrograman basis data, khususnya dalam penggunaan blok prosedural seperti stored procedure, serta penerapan logika dalam pengolahan data akademik.

---
