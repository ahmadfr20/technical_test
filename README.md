# Electronic Store - Backend & Frontend

Aplikasi manajemen produk elektronik dan transaksi penjualan berbasis Java Spring Boot (backend) dan ReactJS + Vite + Tailwind CSS (frontend).

---

## Prasyarat

- Java 17+
- Maven
- Node.js 16+ dan npm/yarn
- MySQL / MariaDB
- Postman (opsional untuk testing API)

---

# Backend (Spring Boot)

### Setup dan Jalankan Backend

1. Lakukan ekstraksi file terlebih dahulu.


2. Buat database MariaDB/MySQL `electronic_store`

3. Edit konfigurasi database di `src/main/resources/application.properties`:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/electronic_store?useSSL=false&serverTimezone=UTC
spring.datasource.username=root
spring.datasource.password=yourpassword
spring.jpa.hibernate.ddl-auto=update
```

4. Jalankan backend:

```bash
mvn clean install
mvn spring-boot:run
```

Server berjalan di `http://localhost:8080`

---

# Frontend (ReactJS + Vite + Tailwind CSS)

### Setup dan Jalankan Frontend

1. Masuk folder client:

```bash
cd electronicstore/client
```

2. Install dependencies:

```bash
npm install
```
atau
```bash
yarn
```

3. Buat file `.env` di folder client dengan isi:

```
VITE_API_BASE_URL=http://localhost:8080/api
```

4. Jalankan development server:

```bash
npm run dev
```
atau
```bash
yarn dev
```

Buka browser dan akses `http://localhost:5173`

---

# Fitur Utama

- **Backend:**
  - Autentikasi JWT (Login/Register)
  - CRUD produk dengan upload gambar
  - Transaksi penjualan dan pembelian
  - Endpoint gambar statis `/uploads/**`
  - Proteksi API dengan Spring Security dan JWT

- **Frontend:**
  - Login dan register user
  - Dashboard produk terbaru dengan gambar
  - Manajemen produk: tambah, edit, hapus (soft delete)
  - List transaksi dengan export Excel
  - Halaman pembelian produk
  - Navigasi React Router & UI Tailwind CSS yang responsif

---

# Struktur Project

```
/backend
  ├─ src/main/java/com/example/electronicstore/   # kode backend
  ├─ src/main/resources/application.properties    # konfigurasi
  └─ uploads/                                     # folder gambar upload

/client
  ├─ src/components/                             # komponen React
  ├─ src/pages/                                  # halaman React
  ├─ src/api/axios.js                            # konfigurasi axios base url
  ├─ tailwind.config.js                          # konfigurasi Tailwind
  └─ vite.config.js                              # konfigurasi Vite
```

---

# API Endpoint Utama

| Method | URL                        | Deskripsi                     |
|--------|----------------------------|-------------------------------|
| POST   | `/api/auth/login`           | Login user, dapat JWT token    |
| POST   | `/api/auth/register`        | Registrasi user baru           |
| GET    | `/api/products`             | Ambil list produk aktif        |
| POST   | `/api/products`             | Tambah produk baru (multipart) |
| POST   | `/api/products/{id}/update-simple` | Update nama, harga, stok produk |
| DELETE | `/api/products/{id}`        | Soft delete produk             |
| GET    | `/api/transactions`         | List semua transaksi           |
| POST   | `/api/transactions`         | Buat transaksi baru            |

---

# Catatan

- Pastikan backend berjalan di port 8080 dan frontend di 5173
- Pastikan folder `uploads/` sudah ada di backend root dan dapat diakses via `/uploads/**`

---

Saya, Ahmad Fathoni Rizaldi, mengucapkan terima kasih yang sebesar-besarnya atas kesempatan yang diberikan untuk mengikuti technical test ini. Saya sangat menghargai waktu dan perhatian tim rekrutmen dalam menilai kemampuan saya melalui pengerjaan aplikasi ini.

Semoga hasil kerja saya dapat memenuhi harapan dan memberikan gambaran yang baik tentang kemampuan saya. Saya sangat berharap dapat bergabung dan memberikan kontribusi positif di perusahaan.

Terima kasih atas perhatian dan kesempatannya. Saya menantikan kabar baik dari Anda.

Hormat saya,
Ahmad Fathoni Rizaldi