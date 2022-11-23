Nama    : Michael Christlambert Sinanta\
NPM     : 2106750414\
Kelas   : PBP C
### Daftar Isi
- [Tugas 7 - Elemen Dasar Flutter](#tugas-7-elemen-dasar-flutter)
- [Tugas 8 - Flutter Form](#tugas-8-flutter-form)
- [Tugas 9 - Integrasi Web Service pada Flutter](#tugas-9-integrasi-web-service-pada-flutter)

# Tugas 7: Elemen Dasar Flutter
### Jelaskan apa yang dimaksud dengan Stateless Widget dan Stateful Widget dan jelaskan perbedaan dari keduanya. 
Stateless Widget adalah Widget yang tidak akan pernah berubah atau tidak dapat dirubah. Stateless Widget tidak bergantung pada perubahan data atau behaviour dan akan di-render sekali dan tidak akan diperbaharui sendiri.\
Stateful Widget adalah widget yang dinamis dan dapat berubah/diubah. Stateful Widget dapat berubah tampilannya sebagai respons terhadap suatu peristiwa yang dipicu oleh interaksi pengguna pada widget tersebut atau saat menerima data.\
Perbedaan yang dapat disimpulkan adalah sebagai berikut : 
1. Stateless Widget adalah widget yang statis dan tidak akan berubah. Sedangkan, Stateful Widget adalah widget yang dinamik dan dapat berubah.
2. Stateless Widget tidak bergantung pada perubahan data/perilaku apapun. Stateful Widget bergantung karena akan diperbaharui jika terdapat perubahan data/perilaku.
3. Stateless Widget tidak memiliki status, akan dirender sekali dan tidak akan diperbaharui. Stateful Widget memiliki status internal yang dapat dirender ulang jika data dari input berubah.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya. 
1. Text = bertugas menampilkan string teks dengan gaya tunggal
2. MaterialApp = bertugas untuk membungkus sejumlah widget yang biasanya diperlukan untuk aplikasi Material Design.
3. AppBar = bertugas untuk menempatkan bilah aplikasi sebagai widget dengan ketinggian yang tetap di bagian atas layar.
4. Row = mengatur tata letak daftar child widget dalam arah horizontal.
5. Column = mengatur tata letak daftar child widget dalam arah vertikal.
6. Scaffold = berfungsi untuk mengimplementasikan struktur tata letak visual desain material dasar dan menyediakan banyak widget/API untuk menampilkan Drawer, SnackBar, AppBar, dan masih banyak lainnya. 
7. Padding = berfungsi untuk menempatkan ruang kosong di sekitar widget.
8. FloatingActionButton = tombol aksi yang berbentuk lingkaran dan mengarahkan kursor ke konten untuk memanggil tindakan utama pada aplikasi.

### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() berfungsi untuk memberi tahu widget bahwa ada objek/data/internal state yang telah berubah pada State sehingga aplikasi akan memuat ulang widget tersebut dengan nilai yang baru. Kita memanggil setState() untuk memicu pembangunan tampilan kembali sehingga perubahan status yang baru dapat terlihat. Variabel yang terdampak adalah variabel di dalam Widget yang memakai setState() dan pada tugas 7 ini, variabel _counter diubah dalam setState().

### Jelaskan perbedaan antara const dengan final.
Final berfungsi untuk menandai/meng-hardcode bahwa nilai dari variable tidak akan berubah/dirubah pada masa mendatang serta tidak ada jenis operasi yang dapat dilakukan pada variabel tersebut yang dapat mengubah nilainya.\
Const berperilaku seperti final namun perbedaannya adalah const membuat variabel konstan pada compile-time saja dan dengan const, kita membuat seluruh state dalam objek  bernilai tetap/pasti pada compile-time dan objek pada state tidak dapat diubah.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat proyek flutter baru dengan nama counter_7.
2. Mengubah title pada MyHomePage menjadi “Program Counter”.
3. Membuat fungsi void baru bernama _decrementCounter() untuk mengurangi angka _counter sebanyak satu satuan dan menggunakan if untuk handle apabila counter bernilai 0, maka tidak akan memiliki efek pada counter.
4. Membuat logika if else pada Text untuk menampilkan String GENAP dan GANJIL sesuai dengan counter dan menambahkan parameter style pada widget Text yaitu TextStyle(color: Colors.blue) untuk GANJIL dan TextStyle(color: Colors.red) untuk GENAP.
5. Membuat dua FloatingActionButton yang dibungkus dengan Row serta Padding. Lalu, menggunakan EdgeInsets untuk membuat padding di sekitar button dan MainAxisAlignment untuk align spaceBetween. 
6. Mengaplikasikan onPressed yang sesuai dengan fungsi dari masing-masing button.
7. Menambahkan if (_counter > 0) sebelum FloatingActionButton untuk decrement sehingga bisa hilang dari layar jika counter bernilai 0.
8. Melakukan add, commit, dan push ke GitHub.

# Tugas 8: Flutter Form
### Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement. 
Navigator.push berfungsi untuk mengganti screen ke screen lainnya namun route baru hanya ditambahkan ke navigator sehingga route yang lama tidak dihapus. Sementara, Navigator.pushReplacement berfungsi juga untuk mengganti screen ke screen lainnya namun route yang lama dibuang sehingga hanya route baru yang ditampilkan dan kita tidak bisa kembali ke route yang lama.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya. 
1. Text = bertugas menampilkan string teks dengan gaya tunggal
2. MaterialApp = bertugas untuk membungkus sejumlah widget yang biasanya diperlukan untuk aplikasi Material Design.
3. AppBar = bertugas untuk menempatkan bilah aplikasi sebagai widget dengan ketinggian yang tetap di bagian atas layar.
4. Row = mengatur tata letak daftar child widget dalam arah horizontal.
5. Column = mengatur tata letak daftar child widget dalam arah vertikal.
6. Scaffold = berfungsi untuk mengimplementasikan struktur tata letak visual desain material dasar dan menyediakan banyak widget/API untuk menampilkan Drawer, SnackBar, AppBar, dan masih banyak lainnya.
7. Padding = berfungsi untuk menempatkan ruang kosong di sekitar widget.
8. FloatingActionButton = tombol aksi yang berbentuk lingkaran dan mengarahkan kursor ke konten untuk memanggil tindakan utama pada aplikasi.
9. SingleChildScrollView = sebuah kotak di mana satu widget dapat di-scroll.
10. ListView = daftar widget yang dapat di-scroll dan disusun secara linier.

### Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed). 
1. onPressed
2. onTap
3. onChanged
4. onSaved
5. onEnd

### Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Widget Navigator menampilkan layar seperti sebuah tumpukan (stack). Untuk mengakses sebuah halaman baru, maka kita dapat mengakses Navigator melalui BuildContext dengan memanggil push() atau pop().
 
### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat halaman form budget di form.dart sebagai page untuk mengisi form.
2. Membuat empat elemen yaitu elemen input dengan tipe data String berupa judul budget, elemen input dengan tipe data int berupa nominal budget, elemen dropdown yang berisi tipe budget dengan pilihan pemasukan dan pengeluaran, dan elemen date untuk tanggal. Lalu, menambahkan button untuk menyimpan budget.
3. Membuat atribut untuk mengisi data-data yang dibutuhkan dan membuat validator untuk mengecek apakah text fieldnya kosong atau tidak sebelum dikirim.
4. Membuat halaman data budget di data.dart untuk menampilkan budget yang telah dibuat.
5. Membuat class dan list budget di dalam halaman data budget sehingga data yang dikirimkan dapat dimasukkan ke dalam list untuk segera ditampilkan.
6. Membuat halaman widget di file terpisah yaitu di drawer.dart. 
7. Melakukan add, commit, dan push ke GitHub.

# Tugas 9: Integrasi Web Service pada Flutter
### Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON? 
Kita bisa melakukan pengambilan data pada JSON tanpa membuat model terlebih dahulu. Namun, hal ini membuat pengolahan data menjadi tidak efisien karena kita harus memproses respons JSON tersebut secara manual dan membuat pengembang kesulitan untuk mengakses dan melihat suatu data setelah menerima respons dari web service.\
Oleh karena itu, hal tersebut tidaklah lebih baik daripada membuat model sebelum melakukan pengambilan data JSON. Dengan adanya models, maka pengembang dapat lebih mudah dan terstruktur untuk mendapatkan suatu data pada models dan melakukan operasi pada data tersebut.
 
### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya. 
1. Text = bertugas menampilkan string teks dengan gaya tunggal
2. MaterialApp = bertugas untuk membungkus sejumlah widget yang biasanya diperlukan untuk aplikasi Material Design.
3. AppBar = bertugas untuk menempatkan bilah aplikasi sebagai widget dengan ketinggian yang tetap di bagian atas layar.
4. Row = mengatur tata letak daftar child widget dalam arah horizontal.
5. Column = mengatur tata letak daftar child widget dalam arah vertikal.
6. Scaffold = berfungsi untuk mengimplementasikan struktur tata letak visual desain material dasar dan menyediakan banyak widget/API untuk menampilkan Drawer, SnackBar, AppBar, dan masih banyak lainnya.
7. Padding = berfungsi untuk menempatkan ruang kosong di sekitar widget.
8. FutureBuilder = berfungsi untuk menjalankan beberapa fungsi asinkron dan berdasarkan hasil fungsi tersebut, UI akan diperbarui.
9. AsyncSnapshot = berfungsi sebagai epresentasi permanen dari interaksi terbaru dengan komputasi asinkronus.
10. SizedBox = sebuah kotak dengan ukuran tertentu.
11. ListView = daftar widget yang dapat di-scroll dan disusun secara linier.
12. Container = digunakan untuk menyimpan satu atau lebih widget dan memposisikannya di layar sesuai kebutuhan kita.
13. EdgeInsets = membantu membuat padding luar atau dalam untuk Widget berdasarkan parameter visual, kiri, atas, kanan, dan bawah.
14. RichText = digunakan untuk menampilkan teks yang menggunakan berbagai gaya berbeda. Teks yang ditampilkan dideskripsikan menggunakan tree dari TextSpan object.
15. TextSpan = berfungsi sebagai rentang teks yang tidak dapat diubah dan memiliki properti style untuk memberi gaya pada teks.
16. ListTile = widget yang merepresentasikan satu baris dengan tinggi yang tetap.

### Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter. 
1. Data di-fetch dari sebuah API endpoint.
2. Mengambil data JSON dengan metode http.get dan kemudian di-decode menjadi bentuk JSON.
3. Mengolah data JSON dari web service dengan memanfaatkan metode pada model yang telah dibuat untuk mengkonversi JSON menjadi data dalam bentuk sebuah model.
4. Menampilkan data dalam bentuk model dari web service yang telah diproses ke widget yang sesuai dan ditampilkan pada aplikasi Flutter.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Menambahkan tombol navigasi pada drawer/hamburger untuk ke halaman mywatchlist.dart yaitu dengan menambahkan kode pada drawer.dart sebagai berikut : 
```dart
ListTile(
    title: const Text('My Watch List'),
    onTap: () {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MyWatchListPage()),
    );
    },
),
```
2. Membuat satu file dart yang berisi model mywatchlist yaitu watchmodel.dart.
3. Menyalin JSON dari Tugas 3 sebelumnya dan membuka situs web Quicktype. Pada QuickType, mengubah setup name menjadi MyWatchList,  source type menjadi JSON, dan language menjadi Dart. Tempel data JSON yang telah disalin sebelumnya ke dalam textbox yang tersedia pada Quicktype. Kemudian, pilih copy code dan menempel kode tersebut pada watchmodel.dart.
4. Menambahkan halaman mywatchlist yang berisi semua watch list yang ada pada endpoint JSON di Django yang telah kamu deploy ke Heroku sebelumnya (Tugas 3) yaitu mywatchlist.dart. Pada bagian ini, saya membuat ListTile untuk menampilkan judul dari setiap mywatchlist yang ada dan menambahkan checkbox pada setiap watchlist pada halaman mywatchlist di mana checkbox akan tercentang jika status ditonton bernilai true dan tidak jika bernilai false.
5. Jika checkbox ditekan, maka status ditonton akan berubah (perubahan akan terjadi di lokal secara sementara saja, status pada endpoint tidak perlu diubah) dan menambahkan warna untuk outline pada setiap mywatchlist pada halaman mywatchlist berdasarkan status ditonton (warna biru jika sudah ditonton dan warna merah jika belum ditonton).
6. Membuat navigasi dari setiap judul watch list ke halaman detail yaitu watchdetail.dart yang akan menampilkan detail dari watchlist.
```dart
onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context) => WatchDetailPage(
            data: snapshot.data![index].fields)),
    );
},
```
7. Menambahkan halaman detail yaitu watchdetail.dart untuk setiap mywatchlist yang ada pada daftar tersebut. Halaman ini menampilkan judul, release date, rating, review, dan status (sudah ditonton/belum). 
8. Menambahkan tombol untuk kembali ke daftar mywatchlist.
9. Refactor function fetch data dari web service ke sebuah file terpisah yaitu fetch_watchlist.dart.
10. Melakukan add, commit, dan push ke GitHub.