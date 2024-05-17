import 'package:flutter/material.dart';
import 'package:slicing_ui_visayamami2c/screen_page/bottom_menu.dart';
import 'package:slicing_ui_visayamami2c/screen_page/page_beranda.dart';

class KategoriPage extends StatefulWidget {
  const KategoriPage({Key? key}) : super(key: key);

  @override
  State<KategoriPage> createState() => _KategoriPageState();
}

class _KategoriPageState extends State<KategoriPage> {
  List<Map<String, dynamic>> listKategori = [
    {
      "judul": "Cyber Security",
      "rating": "4.5",
      "jumlah": "10.5k Learners",
      "gambar": "gambar1.png"
    },
    {
      "judul": "Ethica Hacking",
      "rating": "4.5",
      "jumlah": "10.5k Learners",
      "gambar": "gambar2.png"
    },
    {
      "judul": "Introduction to Cyber Security",
      "rating": "4.5",
      "jumlah": "10.5k Learners",
      "gambar": "gambar3.png"
    },
    {
      "judul": "Introduction to Cyber Crime",
      "rating": "4.5",
      "jumlah": "10.5k Learners",
      "gambar": "gambar4.png"
    },
    {
      "judul": "Introduction to cryptography",
      "rating": "4.5",
      "jumlah": "10.5k Learners",
      "gambar": "gambar9.png"
    },
    {
      "judul": "CISSP",
      "rating": "4.5",
      "jumlah": "10.5k Learners",
      "gambar": "gambar6.png"
    },
    {
      "judul": "Introduction to CISSP",
      "rating": "4.5",
      "jumlah": "10.5k Learners",
      "gambar": "gambar7.png"
    },
    {
      "judul": "Cyber Crime",
      "rating": "4.5",
      "jumlah": "10.5k Learners",
      "gambar": "gambar8.png"
    },
  ];

  List<Map<String, dynamic>> filteredKategori = [];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredKategori = listKategori;
    searchController.addListener(() {
      filterSearchResults(searchController.text);
    });
  }

  void filterSearchResults(String query) {
    if (query.isEmpty) {
      setState(() {
        filteredKategori = listKategori;
      });
    } else {
      List<Map<String, dynamic>> filteredList = listKategori
          .where((item) =>
          item['judul'].toLowerCase().contains(query.toLowerCase()))
          .toList();
      setState(() {
        filteredKategori = filteredList;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    // Code untuk pindah ke halaman beranda
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => PageBottomNavigationBar()), // Ganti HomePage dengan halaman beranda Anda
                          (Route<dynamic> route) => false, // Menghapus semua route sebelumnya
                    );
                  },
                  child: Icon(Icons.arrow_back),
                ),
                SizedBox(width: 10),
                Text(
                  'Cyber Security',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: filteredKategori.length,
                itemBuilder: (context, index) {
                  final movie = filteredKategori[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                movie['judul'],
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    movie['rating'], // Nilai rating
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 18,
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Text(
                                movie['jumlah'],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'gambar/${movie['gambar']}',
                            height: 85,
                            width: 85,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}