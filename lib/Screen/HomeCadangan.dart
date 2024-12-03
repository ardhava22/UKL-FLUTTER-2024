import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ukl_2024/Widgets/Navbar.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue[800],
          elevation: 0,
          flexibleSpace: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Search Bar
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        hintText: 'Cari di TIX ID',
                        hintStyle: TextStyle(
                            fontSize: 14.0), // Ukuran teks hint lebih kecil
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 6.0,
                            horizontal:
                                15.0), // Padding yang lebih kecil untuk memperpendek tinggi
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                              30.0), // Melengkungkan bagian kanan kiri
                          borderSide: BorderSide.none,
                        ),
                      ),
                      style: TextStyle(
                          fontSize:
                              15.0), // Ukuran teks yang diketik lebih kecil
                    )),
                    SizedBox(width: 10),
                    // Icon Lonceng
                    IconButton(
                      icon: Icon(Icons.notifications, color: Colors.white),
                      onPressed: () {
                        // Tambahkan fungsi untuk lonceng
                      },
                    ),
                    // Icon Profil
                    IconButton(
                      icon: Icon(Icons.account_circle,
                          color: Colors.white, size: 28),
                      onPressed: () {
                        // Tambahkan fungsi untuk profil
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // Dropdown Kota
          Row(
            children: [
              Icon(Icons.location_on),
              Text(
                'JAKARTA',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.keyboard_arrow_down),
            ],
          ),

          // Banner
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14.0),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 150,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                viewportFraction: 1,
              ),
              items: [
                'dashboard/home1.jpg',
                'dashboard/home2.jpg',
                'dashboard/home3.jpg',
                'dashboard/home4.jpg',
                'dashboard/home5.jpg',
                'dashboard/home6.jpg',
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: Image.asset(
                          i,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),

          SizedBox(height: 8.0),

          // Promo TIX VIP
          Container(
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.yellow[100],
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              children: [
                Icon(Icons.star, color: Colors.orange),
                SizedBox(width: 8.0),
                Expanded(
                  child: Text(
                    'Jadilah TIX VIP - Dapatkan untung lebih!',
                    style: TextStyle(fontSize: 14.0),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Fungsi untuk tombol TIX VIP
                  },
                  child: Text('Join'),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.0),

          // Sedang Tayang
          Text(
            'Sedang Tayang',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                // Item pertama
                Container(
                  margin: EdgeInsets.only(right: 12.0),
                  width: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage(
                                'dashboard/film1.jpg'), // Gambar pertama
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Film Pertama', // Judul pertama
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14.0),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'Beli Tiket', // Tombol Beli Tiket pertama
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                // Item kedua
                Container(
                  margin: EdgeInsets.only(right: 12.0),
                  width: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage(
                                'dashboard/film2.webp'), // Gambar kedua
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Film Kedua', // Judul kedua
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14.0),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'Beli Tiket', // Tombol Beli Tiket kedua
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                // Item ketiga
                Container(
                  margin: EdgeInsets.only(right: 12.0),
                  width: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage(
                                'dashboard/film3.webp'), // Gambar ketiga
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Film Ketiga', // Judul ketiga
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14.0),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'Beli Tiket', // Tombol Beli Tiket ketiga
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                // Item keempat
                Container(
                  margin: EdgeInsets.only(right: 12.0),
                  width: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage(
                                'poster/poster_4.jpg'), // Gambar keempat
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Film Keempat', // Judul keempat
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14.0),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'Beli Tiket', // Tombol Beli Tiket keempat
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                // Item kelima
                Container(
                  margin: EdgeInsets.only(right: 12.0),
                  width: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage(
                                'poster/poster_5.jpg'), // Gambar kelima
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Film Kelima', // Judul kelima
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14.0),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'Beli Tiket', // Tombol Beli Tiket kelima
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 16.0),

          // Spotlight
          // Spotlight
          Text(
            'Spotlight',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.blue[100],
              image: DecorationImage(
                image: AssetImage(
                    'poster/poster_3.jpg'), // Gambar yang ingin ditampilkan
                fit: BoxFit.cover, // Agar gambar mengisi container
              ),
            ),
            child: Stack(
              children: [
                // Gradasi hitam dari kiri ke kanan
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.black.withOpacity(0.7),
                        Colors.transparent
                      ],
                      stops: [0.5, 1.0],
                    ),
                  ),
                ),
                // Teks di kiri
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Judul di kiri
                        Text(
                          'TIX ID Box Office\n10 Film Terlaris di Bioskop Indonesia',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8.0), // Jarak antara judul dan icon
                        // Baris untuk ikon mata dan jempol
                        Row(
                          children: [
                            // Ikon mata
                            Row(
                              children: [
                                Icon(
                                  Icons.remove_red_eye,
                                  size: 20, // Ukuran kecil
                                  color: Colors.white,
                                ),
                                SizedBox(
                                    width: 4.0), // Jarak antar ikon dan angka
                                Text(
                                  '217', // Angka untuk mata
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            SizedBox(width: 16.0), // Jarak antar ikon
                            // Ikon jempol
                            Row(
                              children: [
                                Icon(
                                  Icons.thumb_up,
                                  size: 20, // Ukuran kecil
                                  color: Colors.white,
                                ),
                                SizedBox(
                                    width: 4.0), // Jarak antar ikon dan angka
                                Text(
                                  '115', // Angka untuk jempol
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.0),

          // TIX Now
          Text(
            'TIX Now',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Column(
            children: List.generate(3, (index) {
              return ListTile(
                leading: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.grey,
                  ),
                ),
                title: Text('Berita Seputar Dunia Film'),
                subtitle: Text('2 jam lalu'),
              );
            }),
          ),
        ],
      ),
      bottomNavigationBar: Navbar(0)
    );
  }
}