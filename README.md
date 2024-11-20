# toserbamobile

A new Flutter project.

## Pertanyaan TI7

### 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
**Stateless Widget** adalah widget yang tidak memiliki state (keadaan) yang dapat berubah. Artinya, tampilan widget ini akan tetap sama sepanjang waktu setelah pertama kali dirender. Contoh: `Text`, `Icon`.

**Stateful Widget** adalah widget yang memiliki state (keadaan) yang dapat berubah selama siklus hidup widget tersebut. Perubahan state ini dapat memengaruhi tampilan widget. Contoh: `Checkbox`, `TextField`.

**Perbedaan utama:**
- **Stateless Widget** cocok untuk elemen yang statis dan tidak berubah.
- **Stateful Widget** digunakan untuk elemen yang dinamis dan membutuhkan perubahan tampilan secara interaktif.

---

### 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
- **`Scaffold`**: Memberikan struktur dasar aplikasi, seperti AppBar, Body, dan Drawer.
- **`AppBar`**: Menyediakan header untuk setiap halaman, biasanya menampilkan judul dan ikon navigasi.
- **`Drawer`**: Menu navigasi samping untuk berpindah antar halaman.
- **`ListTile`**: Membuat elemen daftar dengan ikon dan teks.
- **`Text`**: Menampilkan teks statis.
- **`TextField`**: Membuat input teks dari pengguna.
- **`ElevatedButton`**: Tombol interaktif yang dapat ditekan untuk menjalankan aksi.
- **`GridView`**: Menampilkan elemen dalam tata letak grid.
- **`SnackBar`**: Menampilkan pesan pop-up sementara di bagian bawah layar.
- **`MaterialApp`**: Menjadi root aplikasi, menentukan tema dan routing utama.

---

### 3. Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
`setState()` adalah metode yang digunakan untuk memberi tahu framework bahwa ada perubahan pada state yang perlu diperbarui. Ketika `setState()` dipanggil, Flutter akan merender ulang bagian widget tree yang terpengaruh, sehingga tampilan berubah sesuai dengan state baru.

**Variabel yang dapat terdampak:**
- Variabel dalam class `State` yang digunakan untuk menyimpan data dinamis.
- Contoh pada proyek ini:
  - `_productName`: Nama produk yang diinput oleh pengguna.
  - `_productDescription`: Deskripsi produk.
  - `_productPrice`: Harga produk.

---

### 4. Jelaskan perbedaan antara `const` dengan `final`.
- **`const`**: Digunakan untuk mendeklarasikan nilai yang bersifat konstan dan sudah diketahui pada saat kompilasi. Semua variabel atau objek yang didefinisikan dengan `const` bersifat immutable.
- **`final`**: Digunakan untuk mendeklarasikan nilai yang hanya dapat diatur sekali dan nilainya tidak dapat diubah setelah inisialisasi. Nilainya dapat ditentukan pada saat runtime.

**Contoh Perbedaan:**
```dart
const pi = 3.14; // Nilai ditentukan saat kompilasi.
final currentTime = DateTime.now(); // Nilai ditentukan saat runtime.
```

### 5. Checklist
Berikut langkah-langkah implementasi yang dilakukan:

    1. Stateless dan Stateful Widget:
        Menggunakan Stateless Widget untuk elemen yang tidak membutuhkan perubahan state, seperti InfoCard.
        Menggunakan Stateful Widget untuk halaman form seperti MoodEntryFormPage karena membutuhkan perubahan state saat pengguna menginput data.

    2. Navigasi Antar Halaman:
        Menggunakan Navigator.push untuk membuka halaman baru saat tombol Tambah Produk ditekan.
        Menggunakan Navigator.pop untuk kembali ke halaman sebelumnya.

    3. Membuat Form Input:
        Menggunakan widget seperti TextFormField untuk menerima input dari pengguna.
        Menambahkan validasi input pada form menggunakan properti validator.

    4. Tampilan Grid:
        Menggunakan GridView.count untuk menampilkan tombol-tombol seperti Lihat Produk dan Tambah Produk dalam layout grid.

    5. SnackBar:
        Menggunakan ScaffoldMessenger untuk menampilkan pesan konfirmasi ketika tombol pada grid ditekan.

## Pertanyaan TI8

## Pertanyaan Baru

### 1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
**Kegunaan `const`:**
- `const` digunakan untuk mendefinisikan nilai konstan yang bersifat immutable (tidak dapat diubah) dan sudah diketahui saat kompilasi.

**Keuntungan menggunakan `const`:**
- Mengoptimalkan performa aplikasi karena widget yang didefinisikan dengan `const` hanya dirender sekali dan tidak akan dirender ulang.
- Membantu mengurangi konsumsi memori dengan memungkinkan Flutter menggunakan cache untuk elemen yang sama.

**Kapan sebaiknya digunakan?**
- Gunakan `const` untuk widget atau nilai yang statis dan tidak berubah, seperti `Text`, `Icon`, atau `Padding`.

**Kapan tidak digunakan?**
- Jangan gunakan `const` untuk elemen yang nilai atau tampilannya dapat berubah, seperti widget dengan state atau nilai yang diambil secara dinamis.

---

### 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
**Column**:
- Menyusun widget secara vertikal (dari atas ke bawah).
- Cocok digunakan untuk tata letak seperti formulir atau daftar item.

**Row**:
- Menyusun widget secara horizontal (dari kiri ke kanan).
- Cocok digunakan untuk menempatkan elemen dalam satu baris, seperti ikon dan teks.

**Contoh Implementasi:**
```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: const [
    Text("Item 1"),
    Text("Item 2"),
    Text("Item 3"),
  ],
);

Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: const [
    Icon(Icons.home),
    Icon(Icons.settings),
    Icon(Icons.logout),
  ],
);
```
### 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
**Elemen input yang digunakan:**
- **`TextFormField`**: Digunakan untuk menerima input teks, seperti nama produk, deskripsi produk, dan harga produk.

**Elemen input yang tidak digunakan:**
- **`Checkbox`**: Untuk memilih nilai boolean.
- **`DropdownButton`**: Untuk membuat menu dropdown.
- **`Slider`**: Untuk memilih nilai dengan menggeser slider.
- **`Switch`**: Untuk memilih nilai boolean dengan toggle.

---

### 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
**Cara mengatur tema:**
- Tema diatur pada root aplikasi menggunakan properti `theme` dari `MaterialApp`.
- Contoh implementasi:
  ```dart
  MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.blue,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Colors.blue,
        secondary: Colors.orange,
      ),
    ),
  );
  ```

Implementasi pada proyek :
    Proyek ini menggunakan tema yang konsisten, termasuk warna utama (biru) untuk elemen seperti AppBar dan tombol.

### 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
- Menggunakan widget Navigator untuk berpindah antar halaman.
- Navigasi maju menggunakan Navigator.push
- Navigasi mundur menggunakan Navigator.pop:

## Pertanyaan TI9

### 1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
**Pentingnya model:**
- Model membantu mempermudah pengelolaan data JSON dengan memetakan struktur data dari server menjadi objek di Flutter.
- Model menyediakan cara yang terstruktur untuk mengakses properti data, sehingga meminimalkan kesalahan dalam pengambilan atau pengiriman data.

**Apa yang terjadi jika model tidak dibuat?**
- Tidak akan terjadi error jika kita tidak membuat model, namun akan lebih sulit mengelola data karena kita harus memproses JSON secara manual.
- Hal ini dapat mengakibatkan kode menjadi tidak rapi dan rentan terhadap kesalahan, terutama jika struktur JSON kompleks atau berubah.

---

### 2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini.
**Fungsi utama library `http`:**
- Library `http` digunakan untuk melakukan komunikasi dengan server melalui protokol HTTP.
- Dengan library ini, kita dapat melakukan berbagai operasi seperti:
  - **GET**: Mengambil data dari server.
  - **POST**: Mengirim data ke server.
  - **DELETE**: Menghapus data pada server.

**Implementasi pada proyek ini:**
- Menggunakan **http.get** untuk mengambil data produk dari server.
- Menggunakan **http.post** untuk mengirim data form produk ke server.

---

### 3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
**Fungsi `CookieRequest`:**
- **CookieRequest** adalah library untuk melakukan komunikasi HTTP yang dapat menyimpan cookie.
- Cookie ini digunakan untuk autentikasi, sehingga aplikasi dapat mengelola sesi pengguna (login/logout) secara efisien.

**Mengapa perlu dibagikan ke semua komponen?**
- Instance `CookieRequest` digunakan untuk memastikan semua permintaan HTTP dalam aplikasi memiliki akses ke cookie sesi pengguna.
- Dengan membagikan instance ini melalui `Provider`, kita dapat memastikan bahwa semua komponen aplikasi berbagi sesi yang sama tanpa perlu mengelola cookie secara manual di setiap komponen.

---

### 4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
**Mekanisme pengiriman data:**
1. **Input Data**:
   - Pengguna memasukkan data melalui elemen input seperti `TextFormField` di Flutter.
2. **Validasi**:
   - Data divalidasi menggunakan properti `validator` untuk memastikan input sesuai.
3. **Pengiriman ke Server**:
   - Data dikirim ke server menggunakan **http.post** atau metode dari `CookieRequest`.
   - Data dikonversi menjadi format JSON sebelum dikirim.
4. **Penyimpanan di Server**:
   - Server Django menerima data, memprosesnya, dan menyimpannya ke database.
5. **Pengambilan Data**:
   - Aplikasi Flutter menggunakan **http.get** untuk mengambil data yang disimpan di server.
6. **Menampilkan di Flutter**:
   - Data JSON yang diterima dari server dikonversi ke dalam model (misalnya, `ProductEntry`) dan ditampilkan pada widget seperti `ListView`.

---

### 5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
**Mekanisme Login:**
1. **Input**:
   - Pengguna memasukkan username dan password melalui form di Flutter.
2. **Pengiriman Data**:
   - Data dikirim ke server Django menggunakan **CookieRequest.post**.
3. **Verifikasi di Django**:
   - Django memeriksa kredensial pengguna.
   - Jika berhasil, Django mengirimkan cookie sesi kembali ke Flutter.
4. **Penyimpanan Cookie**:
   - Flutter menyimpan cookie ini melalui `CookieRequest` untuk digunakan dalam permintaan selanjutnya.
5. **Akses Menu**:
   - Jika login berhasil, Flutter mengarahkan pengguna ke halaman utama.

**Mekanisme Register:**
1. **Input Data**:
   - Pengguna mengisi form pendaftaran dengan username, email, dan password.
2. **Pengiriman Data**:
   - Data dikirim ke endpoint Django yang mengelola pendaftaran.
3. **Proses di Django**:
   - Django membuat akun baru jika data valid dan belum digunakan.

**Mekanisme Logout:**
1. **Permintaan Logout**:
   - Flutter mengirimkan permintaan logout ke server Django.
2. **Hapus Cookie**:
   - Django menghapus sesi pengguna di server.
3. **Navigasi ke Login**:
   - Flutter menghapus cookie lokal dan mengarahkan pengguna kembali ke halaman login.

---

### 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
**Langkah Implementasi:**
1. **Membuat Model**:
   - Membuat model seperti `MoodEntry` untuk memetakan struktur data JSON.
2. **Mengelola Login/Register**:
   - Membuat halaman login dan register menggunakan `TextFormField` untuk input data.
   - Menggunakan `CookieRequest` untuk mengirim data ke server.
3. **Membuat Form Tambah Produk**:
   - Membuat halaman form dengan validasi input menggunakan `validator`.
4. **Mengatur Navigasi**:
   - Menambahkan navigasi menggunakan `Navigator.push` untuk berpindah antar halaman.
5. **Menampilkan Data Produk**:
   - Menggunakan `FutureBuilder` untuk mengambil dan menampilkan data dari server dalam bentuk list menggunakan `ListView`.
6. **Menyusun Tema Aplikasi**:
   - Menentukan tema aplikasi di root menggunakan properti `theme` pada `MaterialApp`.
7. **Logout**:
   - Implementasi logout dengan menghapus sesi menggunakan `CookieRequest.logout`.

---



