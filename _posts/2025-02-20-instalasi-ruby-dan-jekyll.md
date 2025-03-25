---
layout: post
title: "Instalasi Ruby dan Jekyll"
---

## Penjelasan tentang Instalasi Ruby dan Jekyll

Ruby dan Jekyll adalah dua teknologi yang digunakan dalam pengembangan website. Berikut adalah penjelasan lengkapnya:

### Apa itu Ruby?
Ruby adalah bahasa pemrograman dinamis yang berfokus pada kesederhanaan dan produktivitas. Ruby memiliki sintaks yang elegan dan mudah dibaca, membuatnya menjadi pilihan populer untuk pengembangan web.

### Apa itu Jekyll?
Jekyll adalah generator situs statis yang ditulis dalam Ruby. Jekyll mengubah file teks biasa (seperti Markdown) menjadi website statis yang bisa di-host di mana saja.

### Keuntungan Menggunakan Jekyll:
1. **Sederhana**
   - Tidak memerlukan database
   - Tidak ada bahasa pemrograman kompleks
   - Mudah dipelajari

2. **Cepat**
   - Website statis lebih cepat loading
   - Tidak memerlukan proses server-side
   - Hosting lebih mudah

3. **Aman**
   - Tidak ada database yang bisa diretas
   - Tidak ada sistem login yang rentan

## Instalasi Ruby dan Jekyll

Berikut langkah-langkah untuk menginstal Ruby dan Jekyll di berbagai sistem operasi:

### 1. Instalasi Ruby
#### a) Windows
1. Unduh dan instal [RubyInstaller](https://rubyinstaller.org/).
2. Pilih versi yang menyertakan DevKit.
3. Setelah instalasi, buka Command Prompt dan jalankan:

   ruby -v

   markdown
   Copy
   Edit
   untuk memastikan Ruby telah terinstal.

#### b) macOS
1. Gunakan Homebrew untuk menginstal Ruby:
   brew install ruby
   markdown
   Copy
   Edit
2. Cek versi Ruby dengan:
   ruby -v

   markdown
   Copy
   Edit

#### c) Linux (Ubuntu/Debian)
1. Jalankan perintah berikut di terminal:
   sudo apt update sudo apt install ruby-full

   markdown
   Copy
   Edit
2. Verifikasi instalasi dengan:
   ruby -v

   markdown
   Copy
   Edit

### 2. Instalasi Jekyll
1. Setelah Ruby terinstal, jalankan perintah berikut untuk menginstal Jekyll dan Bundler:
   gem install jekyll bundler

   markdown
   Copy
   Edit
2. Pastikan Jekyll telah terinstal dengan:
jekyll -v

shell
Copy
Edit

### 3. Membuat dan Menjalankan Proyek Jekyll
1. Buat proyek baru dengan Jekyll:
   jekyll new my-website

   markdown
   Copy
   Edit
2. Masuk ke direktori proyek:
   cd my-website

   markdown
   Copy
   Edit
3. Jalankan server Jekyll:
   bundle exec jekyll serve

   markdown
   Copy
   Edit
4. Buka browser dan akses `http://localhost:4000` untuk melihat hasilnya.

## Kesimpulan
Ruby dan Jekyll adalah kombinasi yang kuat untuk membuat website statis yang cepat, aman, dan mudah di-host. Dengan langkah-langkah di atas, Anda dapat dengan mudah memulai proyek Jekyll dan mengelola website statis Anda.

