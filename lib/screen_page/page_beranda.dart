import 'package:flutter/material.dart';
import 'package:slicing_ui_visayamami2c/screen_page/category_page.dart';
import 'package:slicing_ui_visayamami2c/screen_page/search_page.dart';

class PageBeranda extends StatefulWidget {
  const PageBeranda({Key? key}) : super(key: key);

  @override
  State<PageBeranda> createState() => _PageBerandaState();
}

class _PageBerandaState extends State<PageBeranda> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Hello Visa!',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 17,
                    ),
                  ),
                  Spacer(), // Mengisi ruang kosong di antara teks dan ikon
                  Icon(Icons.search),
                ],
              ),

              SizedBox(height: 20,),
              Container(
                height: 240,
                width: screenWidth,
                child: Center(
                  child: SizedBox(
                    height: 550,
                    width: 550,
                    child: Image.asset(
                      'gambar/card.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Text(
                'Categories',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                ),
              ),

              SizedBox(height: 20),
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Row(
                 children: [
                   InkWell(
                     onTap: () {
                       Navigator.push(
                         context, MaterialPageRoute(builder: (context) => KategoriPage()),
                       );
                     },
                     child: Card(
                       child: Container(
                         width: 180,
                         height: 80,
                         child: ListTile(
                           contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                           title: Text(
                             'Cyber Security',
                             style: TextStyle(
                               color: Colors.black,
                               fontWeight: FontWeight.bold,
                               fontSize: 14,
                             ),
                           ),
                           subtitle: Text(
                             '145 Courses',
                             style: TextStyle(
                               color: Colors.black,
                               fontWeight: FontWeight.normal,
                               fontSize: 14,
                             ),
                           ),
                           trailing: Icon(
                             Icons.security,
                             size: 40.0,
                             color: Colors.purple,// Menentukan ukuran ikon
                           ),
                         ),
                       ),
                     ),
                   ),

                   Card(
                     child: Container(
                       width: 180,
                       height: 80,
                       child: ListTile(
                         contentPadding: EdgeInsets.symmetric(horizontal: 10.0), // Padding di dalam ListTile
                         title: Text(
                           'Data Science',
                           style: TextStyle(
                             color: Colors.black,
                             fontWeight: FontWeight.bold,
                             fontSize: 14,
                           ),
                         ),
                         subtitle: Text(
                           '120 Courses',
                           style: TextStyle(
                             color: Colors.black,
                             fontWeight: FontWeight.normal,
                             fontSize: 14,
                           ),
                         ),
                         trailing: Icon(
                           Icons.cloud,
                           size: 40.0,
                           color: Colors.purple,// Menentukan ukuran ikon
                         ),
                       ),
                     ),
                   ),

                   Card(
                     child: Container(
                       width: 180,
                       height: 80,
                       child: ListTile(
                         contentPadding: EdgeInsets.symmetric(horizontal: 10.0), // Padding di dalam ListTile
                         title: Text(
                           'Cyber Security',
                           style: TextStyle(
                             color: Colors.black,
                             fontWeight: FontWeight.bold,
                             fontSize: 14,
                           ),
                         ),
                         subtitle: Text(
                           '145 Courses',
                           style: TextStyle(
                             color: Colors.black,
                             fontWeight: FontWeight.normal,
                             fontSize: 14,
                           ),
                         ),
                         trailing: Icon(
                           Icons.security,
                           color: Colors.purple,
                           size: 40.0, // Menentukan ukuran ikon
                         ),
                       ),
                     ),
                   ),

                 ],
               ),
             ),


              SizedBox(height: 50),
              Text(
                'Top Course',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 15),
                    Card(
                      child: Container(
                        constraints: BoxConstraints(
                          maxHeight: 230, // Atur tinggi maksimal card di sini
                          maxWidth: 250, // Atur lebar maksimal card di sini
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(4),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'gambar/yo.png',
                                  fit: BoxFit.cover, // Sesuaikan dengan preferensi Anda
                                  height: 150, // Atur tinggi gambar di sini
                                  width: double.infinity, // Atur lebar gambar sesuai dengan lebar card
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                'Data Science',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                              subtitle: Row(
                                children: [
                                  Icon(Icons.star, color: Colors.black), // Icon bintang
                                  SizedBox(width: 10), // Spasi antara ikon dan teks
                                  Text(
                                    '4.6', // Nilai rating
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 50), // Spasi antara teks rating dan jumlah pelajar
                                  Text(
                                    '10.5k learner',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                  InkWell(
                    onTap: () {
                      // Code untuk pindah page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PageSearch()), // Ganti PageSearch dengan halaman yang ingin Anda tuju
                      );
                    },
                    child: Card(
                      child: Container(
                        constraints: BoxConstraints(
                          maxHeight: 230, // Atur tinggi maksimal card di sini
                          maxWidth: 250, // Atur lebar maksimal card di sini
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(4),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'gambar/data.png',
                                  fit: BoxFit.cover, // Sesuaikan dengan preferensi Anda
                                  height: 150, // Atur tinggi gambar di sini
                                  width: double.infinity, // Atur lebar gambar sesuai dengan lebar card
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                'Machine Learning',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                              subtitle: Row(
                                children: [
                                  Icon(Icons.star, color: Colors.black), // Icon bintang
                                  SizedBox(width: 10), // Spasi antara ikon dan teks
                                  Text(
                                    '4.6', // Nilai rating
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 50), // Spasi antara teks rating dan jumlah pelajar
                                  Text(
                                    '10.5k learners',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 15),
                  ],
                ),
              ),

              SizedBox(height: 50),
              Text(
                'Popular Blogs',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 15),
                    Card(
                      child: Container(
                        width: 300,
                        height: 180,
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: [
                            Image.asset(
                              'gambar/data.png',
                              fit: BoxFit.cover,
                              height: 150,
                              width: 150,
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start, // Atur agar teks berada di bagian atas
                                crossAxisAlignment: CrossAxisAlignment.start, // Atur agar teks berada di sebelah kiri
                                children: [
                                  SizedBox(height: 11,),
                                  Text(
                                    'Rian Mendella', // Nilai rating
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13,
                                    ),
                                  ),
                                  Flexible(
                                    child: Text(
                                      'How to improve Microsoft Excel Skills', // Nilai rating
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      overflow: TextOverflow.ellipsis, // Jika teks terlalu panjang, tambahkan ...
                                      maxLines: 4, // Maksimal 2 baris teks
                                    ),
                                  ),
                                  Flexible(
                                    child: Text(
                                      'Most people know the power Excel can wield, especially when used properly. But fewer people know how to make the most of Excel...', // Nilai rating
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                      ),
                                      overflow: TextOverflow.ellipsis, // Jika teks terlalu panjang, tambahkan ...
                                      maxLines: 4, // Maksimal 2 baris teks
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Card(
                      child: Container(
                        width: 300,
                        height: 180,
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: [
                            Image.asset(
                              'gambar/ye.png',
                              fit: BoxFit.cover,
                              height: 150,
                              width: 150,
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start, // Atur agar teks berada di bagian atas
                                crossAxisAlignment: CrossAxisAlignment.start, // Atur agar teks berada di sebelah kiri
                                children: [
                                  SizedBox(height: 11,),
                                  Text(
                                    'Liza Nisel', // Nilai rating
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13,
                                    ),
                                  ),
                                  Flexible(
                                    child: Text(
                                      'Top 10 Java Tools for 2021', // Nilai rating
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      overflow: TextOverflow.ellipsis, // Jika teks terlalu panjang, tambahkan ...
                                      maxLines: 4, // Maksimal 2 baris teks
                                    ),
                                  ),
                                  Flexible(
                                    child: Text(
                                      'Java is the most widely used high level object oriented programming language across the globe. Oracle Corporation purchased SUN MiCROSYSTEM in 2010...', // Nilai rating
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                      ),
                                      overflow: TextOverflow.ellipsis, // Jika teks terlalu panjang, tambahkan ...
                                      maxLines: 4, // Maksimal 2 baris teks
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),

            ],

          ),
        ),
      ),
    );
  }
}
