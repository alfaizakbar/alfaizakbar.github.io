---
layout : post
title : "Config.YML"
---

## Penjelasan Config.yml

File config.yml berfungsi sebagai sumber konfigurasi utama yang memuat informasi penting mengenai situs web yang akan ditampilkan. File ini memungkinkan pemisahan antara data dan tampilan (template), sehingga mempermudah proses pengelolaan dan pembaruan konten tanpa harus mengubah struktur HTML secara langsung.

Adapun isi dari config.yml dibagi ke dalam beberapa bagian utama, yaitu:

### site
Menyimpan informasi dasar mengenai situs seperti:
- Judul halaman (title)
- URL favicon
- Link ke file CSS eksternal
- Link ke font dari Google Fonts

### author
Menyimpan data personal pemilik situs:
- Nama depan dan belakang
- Kalimat sapaan atau pembuka (greeting)
- Daftar kalimat dinamis yang digunakan sebagai tagline dalam animasi teks

### nav
Daftar menu navigasi yang akan ditampilkan di bagian atas halaman:
- Nama item navigasi (name)
- Tautan tujuan (link)
- Penanda halaman aktif (current)

### Contoh Struktur Config.yml

Struktur config.yml
```html
site:
  title: "Home"
  favicon: "/assets/images/favicon.ico"
  css: "/assets/css/styles.css"
  font: "https://fonts.googleapis.com/css2?family=Merriweather:ital,opsz,wght@0,18..144,300..900;1,18..144,300..900&display=swap"

author:
  first_name: "AL FAIZ AKBAR"
  last_name: "THAIB"
  greeting: "Hi there, my name is"
  tagline:
    - "Saya Adalah Seorang Mahasiswa Politeknik Jurusan Teknologi Informasi dan Komputer"
    - "Saya Alumni SMKN 1 Lhokseumawe Jurusan Rekayasa Perangkat Lunak"
    - "Cita Cita saya Ingin Menjadi Programmer"
    - "Hobi saya Ngoding"

nav:
  - name: "HOME"
    link: "/"
    current: true
  - name: "FRIENDS"
    link: "/friends.html"
  - name: "BLOG"
    link: "/blog.html"
```
### Contoh Penerapan di Template (template.erb)
#### Bagian Nama Di HTML :
```html
<h1 class="name"><%= author["first_name"] %> <span class="last_name"><%= author["last_name"] %></span></h1>
```
#### Bagian Menu navigasi :
```html
<% nav.each do |item| %>
  <a href="<%= item["link"] %>" <%= item["current"] ? 'class="current"' : '' %>><%= item["name"] %></a>
<% end %>
```
#### Bagian tagline animasi (dengan JavaScript) :
```html
<script>
  const phrases = <%= author["tagline"].to_json %>;
</script>
```
