---
layout : post
title : Formspree
---

## Penjelasan Formspree

Formspree adalah layanan form backend yang memungkinkan kamu mengirim data formulir HTML ke email atau endpoint lain tanpa perlu menulis kode backend sendiri (seperti PHP, Node.js, dll). Cocok untuk situs statis (seperti HTML biasa atau yang dibuat dengan Jekyll, Hugo, dll).

# Formspree: Solusi Pengiriman Formulir Sederhana untuk Website Statis

## 📌 Gambaran Umum
Formspree adalah layanan pengiriman formulir berbasis web yang memungkinkan pengembang mengumpulkan data dari formulir HTML tanpa perlu menyiapkan backend atau server-side scripting. Layanan ini sangat cocok untuk:

- Website statis (HTML, Jekyll, Hugo, dll)
- Proyek sederhana yang tidak memerlukan sistem kompleks
- Pengembang yang ingin menghemat waktu setup backend

## 🌟 Fitur Utama Formspree

### 1. Kemudahan Penggunaan
```html
<form action="https://formspree.io/f/your-form-id" method="POST">
  <input type="text" name="name" placeholder="Nama Anda">
  <input type="email" name="_replyto" placeholder="Email Anda">
  <textarea name="message" placeholder="Pesan Anda"></textarea>
  <button type="submit">Kirim Pesan</button>
</form>
```
### 2. Dukungan Berbagai Jenis Input
Text fields

Email inputs

File uploads (versi berbayar)

Checkbox dan radio buttons

Dropdown select

Hidden fields

### 3. Manajemen Spam Canggih
✅ reCAPTCHA integrasi
✅ Honeypot protection
✅ Filter spam otomatis
✅ Domain whitelisting (versi premium)

### 4. Opsi Pengiriman Data
Email notifikasi

Webhook (POST requests)

Integrasi dengan Zapier

Redirect setelah submit

Response custom

## Langkah 2 : Implementasi kode
```html
<form action="https://formspree.io/f/your-unique-id" method="POST">
  <label>Nama Lengkap:
    <input type="text" name="name" required>
  </label>
  
  <label>Email:
    <input type="email" name="_replyto" required>
  </label>
  
  <label>Pesan:
    <textarea name="message" required></textarea>
  </label>
  
  <!-- Honeypot anti-spam -->
  <input type="text" name="_gotcha" style="display:none">
  
  <button type="submit">Kirim</button>
</form>
```
