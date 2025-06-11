---
layout : post
title : Sweet Alert
---

## SweetAlert2: Library Alert Modern yang Interaktif

## 📌 Pengenalan
SweetAlert2 adalah library JavaScript untuk membuat alert/notifikasi yang lebih indah dan interaktif dibanding `alert()` bawaan browser.

```javascript
import Swal from 'sweetalert2'
```

### 🌟 Fitur Utama
Desain Modern - Animasi dan UI yang menarik

Kustomisasi Tinggi - Warna, icon, tombol, dll

Responsif - Tampilan optimal di semua device

Promise-based - Mudah menangani interaksi user

🚀 Cara Penggunaan Dasar
1. Installasi
Via npm:
```bash
npm install sweetalert2
```
atau CDN:
```html
<script src="DN:
```html
<script src="URL_ADDRESS.jsdelivr.net/npm/sweetalert2@11"></script>
```
2. Alert Sederhana
```javascript
swal.fire('Hello, World!')
```

3. Alert dengan Konfigurasi
```javascript
Swal.fire({
  title: 'Error!',
  text: 'Terjadi kesalahan',
  icon: 'error',
  confirmButtonText: 'OK'
})
```
### 🎨 Jenis Alert

#### Basic Alert
```javascript
Swal.fire('Proses berhasil!')
```
#### Alert dengan Icon
```javascript
Swal.fire({
  title: 'Good job!',
  text: 'Data tersimpan',
  icon: 'success'
})
```

#### Confirm Dialog
```javascript
Swal.fire({
  title: 'Yakin ingin menghapus?',
  icon: 'warning',
  showCancelButton: true,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
  confirmButtonText: 'Ya, hapus!'
}).then((result) => {
  if (result.isConfirmed) {
    // Kode untuk hapus data
  }
})
```

#### Input Form
```javascript
Swal.fire({
  title: 'Masukkan email',
  input: 'email',
  inputPlaceholder: 'alamat@email.com'
}).then((result) => {
  if (result.value) {
    console.log('Email:', result.value)
  }
})
```
### ⚙️ Konfigurasi Lanjutan
#### Custom HTML
```javascript
Swal.fire({
  title: '<strong>HTML</strong> <u>example</u>',
  icon: 'info',
  html: 'You can use <b>bold text</b>, ' +
    '<a href="//sweetalert2.github.io">links</a> ' +
    'and other HTML tags',
  showCloseButton: true,
  showCancelButton: true,
  focusConfirm: false
})
```

#### Timer Auto-close
```javascript
Swal.fire({
  position: 'top-end',
  icon: 'success',
  title: 'Data tersimpan',
  showConfirmButton: false,
  timer: 1500
})
```

#### Toast Notification
```javascript
const Toast = Swal.mixin({
  toast: true,
  position: 'top-end',
  showConfirmButton: false,
  timer: 3000,
  timerProgressBar: true,
  didOpen: (toast) => {
    toast.addEventListener('mouseenter', Swal.stopTimer)
    toast.addEventListener('mouseleave', Swal.resumeTimer)
  }
})

Toast.fire({
  icon: 'success',
  title: 'Berhasil menyimpan'
})
```

### 🎨 Kustomisasi Tampilan
#### Mengubah Warna
```javascript
Swal.fire({
  title: 'Custom warna',
  confirmButtonColor: '#FF0000',
  background: '#000',
  color: '#FFF'
})
```

#### Custom Icon
```javascript
Swal.fire({
  title: 'Custom Icon',
  iconHtml: '<i class="fas fa-heart"></i>'
})
```
### 🔗 Referensi
Dokumentasi Resmi

GitHub Repository

Contoh Live Demo

### 💡 Tips
Gunakan allowOutsideClick: false untuk mencegah alert ditutup dengan klik diluar

Tambahkan backdrop: false untuk menghilangkan overlay gelap

Untuk animasi khusus, gunakan showClass dan hideClass

    