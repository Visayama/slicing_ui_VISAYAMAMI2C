import 'package:flutter/material.dart';
import 'package:slicing_ui_visayamami2c/screen_page/bottom_menu.dart';
import 'package:slicing_ui_visayamami2c/screen_page/page_beranda.dart';
import 'package:slicing_ui_visayamami2c/screen_page/start_page.dart';

class PageSearch extends StatefulWidget {
  const PageSearch({Key? key}) : super(key: key);

  @override
  State<PageSearch> createState() => _PageSearchState();
}

class _PageSearchState extends State<PageSearch> {
  List<Map<String, dynamic>> listKategori = [
    {
      "judul": "Machine Learning",
      "rating": "4.5",
      "jumlah": "10.5k Learners",
      "gambar": "gambar1.png"
    },
    {
      "judul": "Getting Started with ML",
      "rating": "4.5",
      "jumlah": "10.5k Learners",
      "gambar": "gambar2.png"
    },
    {
      "judul": "Introduction to Machine Learning",
      "rating": "4.5",
      "jumlah": "10.5k Learners",
      "gambar": "gambar3.png"
    },
    {
      "judul": "PG in Machine Learning",
      "rating": "4.5",
      "jumlah": "10.5k Learners",
      "gambar": "gambar4.png"
    },
    {
      "judul": "Machine Learning",
      "rating": "4.5",
      "jumlah": "10.5k Learners",
      "gambar": "gambar9.png"
    },
    {
      "judul": "Machine Learning Course",
      "rating": "4.5",
      "jumlah": "10.5k Learners",
      "gambar": "gambar6.png"
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
            TextFormField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: "Machine Learning",
                prefixIcon: InkWell(
                  onTap: () {
                    // Code untuk pindah ke halaman beranda
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PageBottomNavigationBar()), // Ganti HomePage dengan halaman beranda Anda
                          (Route<dynamic> route) => false, // Menghapus semua route sebelumnya
                    );
                  },
                  child: Icon(Icons.arrow_back),
                ),
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey.withOpacity(0.1),
              ),
            ),
            SizedBox(height: 10),
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
                          child: GestureDetector(
                            onTap: () {
                              // Code untuk pindah ke halaman beranda
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PageStart()), // Ganti HomePage dengan halaman beranda Anda
                                    (Route<dynamic> route) => false, // Menghapus semua route sebelumnya
                              );
                            },
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
