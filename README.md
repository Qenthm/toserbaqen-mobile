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




