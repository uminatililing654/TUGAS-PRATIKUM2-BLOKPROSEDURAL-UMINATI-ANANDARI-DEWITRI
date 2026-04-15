# TUGAS-PRATIKUM2-BLOKPROSEDURAL-UMINATI-ANANDARI-DEWITRI
# 📘 Tugas Praktikum 2 - Pemrograman Basis Data

## Struktur Blok Prosedural (Anonymous Block, Variabel, Konstanta, dan Tipe Data)
👤 Anggota Kelompok

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
 Deskripsi Singkat
 Praktikum ini bertujuan untuk mensimulasikan validasi data akademik mahasiswa sebelum pengisian KRS menggunakan blok prosedural pada MySQL. Program akan    memproses data mahasiswa, menentukan validitas data, mengelompokkan beban studi, serta menilai performa akademik mahasiswa.
 Struktur Repository

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
 Penjelasan Program

 🔹 Bagian A – Identitas Mahasiswa
Menampilkan data mahasiswa menggunakan variabel dan konstanta.
🔹 Bagian B – Validasi Akademik
Melakukan pengecekan:
* Status pembayaran
* Jumlah SKS
* IPK
  Serta menentukan kategori beban studi dan performa akademik.
🔹 Bagian C – Kelayakan KRS
Menggabungkan identitas dan validasi untuk menentukan apakah mahasiswa layak mengambil KRS.
🔹 Bagian D – Perbandingan Mahasiswa
Membandingkan dua mahasiswa berdasarkan:
* IPK
* Jumlah SKS (jika IPK sama)
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
* Menentukan kelayakan KRS
* Membandingkan dua mahasiswa
 👩‍💻 Pembagian Tugas

| Nama             | Tugas                                              |
| ---------------- | -------------------------------------------------- |
| Uminati          | Analisis studi kasus, Bagian A & B, logika program |
| Anandari Dewitri | Bagian C & D, output program, dokumentasi          |
| Semua anggota    | Pengujian, laporan, dan upload GitHub              |

---
 📝 Cara Menjalankan Program

1. Buka *LARAGON → phpMyAdmin**
2. Pilih menu **SQL**
3. Copy isi file `program.sql`
4. Jalankan query
5. Gunakan perintah `CALL nama_procedure();`
6.  🔗 Cara Pengumpulan

* Repository dibuat dalam mode **public**
* Berisi semua file:
* SQL
 * Laporan PDF
 * Screenshot hasil
* Link repository dikumpulkan melalui LMS Edlink dengan format:
 * Nama Kelompok
 * Nama Anggota & NIM
 * Link GitHub

---
 Catatan

* Program dibuat menggunakan MySQL (LARAGO)
* Tidak menggunakan tabel database
* Fokus pada logika blok prosedural

---

✨ *Praktikum ini menjadi dasar untuk memahami pemrograman basis data lebih lanjut seperti stored procedure, function, dan trigger.*

