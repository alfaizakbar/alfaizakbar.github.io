---
layout : post
title : "Navigation"
---

## Penjelasan tentang Navigation.

Navigation pada Ruby (Jekyll) adalah cara untuk membuat menu navigasi di website. Berikut adalah penjelasan lengkapnya:

### 1. Data Navigation
Navigation dapat dibuat menggunakan file `_data/navigation.yml`:

```yaml
- name: Home
  link: /
- name: Blog
  link: /blog
- name: About
  link: /about
```

### 2. Impelementasi Navigation
Cara Mengeimplementasikan navigation di layout:
```html
<nav>
  {% for item in site.data.navigation %}
    <a href="{{ item.link }}" {% if page.url == item.link %}class="current"{% endif %}>
      {{ item.name }}
    </a>
  {% endfor %}
</nav>
```

### 3. Styling Navigation
Css Untuk Styling Navigation:
```css
nav {
    background-color: #f8f9fa;
    padding: 1rem;
}

nav a {
    color: #333;
    text-decoration: none;
    margin-right: 1rem;
}

nav a.current {
    color: green;
    font-weight: bold;
}
```

### 4. Jenis-jenis Navigation
- **1. Top Navigation**:
  - Menu Navigasi di bagian atas Website.
  - Cocok untuk website dengan struktur sederhana. 
- **2. Sidebar Navigation**:
  - Menu navigasi di bagian atas website.
  - Ideal untuk dokumentasi atau website dengan banyak halaman.
- **3. Dropdown Navigation**:
  - Menu navigasi yang memiliki sub-menu.
  - Cocok untuk website dengan banyak halaman dan sub-menu.
  Contoh Penerapannya:
  ```yaml
  - name: Products
  link: /products
  subnav:
    - name: Category 1
      link: /products/cat1
    - name: Category 2
      link: /products/cat2
    ```

### 5. Best Practices
- Gunakan Navigation yang mudah dibaca.
- Gunakan Navigation yang sesuai dengan struktur website.
