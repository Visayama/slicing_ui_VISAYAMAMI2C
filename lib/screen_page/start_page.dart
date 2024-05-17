import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:slicing_ui_visayamami2c/screen_page/bottom_menu.dart';
import 'package:slicing_ui_visayamami2c/screen_page/category_page.dart';
import 'package:slicing_ui_visayamami2c/screen_page/page_beranda.dart';
import 'package:slicing_ui_visayamami2c/screen_page/search_page.dart';

class PageStart extends StatelessWidget {
  const PageStart({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.zero,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
              SizedBox(height: 15,),
              Container(
                height: 240,
                width: screenWidth,
                child: Center(
                  child: SizedBox(
                    height: 550,
                    width: 550,
                    child: Image.asset(
                      'gambar/start.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              Center(
                child:  ListTile(
                  title: Text(
                    'Machine learning',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber), // Icon bintang
                      SizedBox(width: 10), // Spasi antara ikon dan teks
                      Text(
                        '4.6', // Nilai rating
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(width: 50), // Spasi antara teks rating dan jumlah pelajar
                      Text(
                        '10.5k learner',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            Row(
              children: [
                Spacer(),
                Column(
                  children: [
                    Text(
                      'Overview',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.purple,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 2), // Jarak antara teks dan garis
                      height: 2, // Tinggi garis
                      width: 70, // Lebar garis (bisa disesuaikan)
                      color: Colors.purple, // Warna garis
                    ),
                  ],
                ),
                SizedBox(width: 100, height: 70),
                Text(
                  'Lectures',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                SizedBox(width: 100),
                Text(
                  'Similar Courses',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                SizedBox(width: 25),
              ],
            ),

            Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0), // Sesuaikan nilai padding sesuai kebutuhan
                        child: Icon(Icons.watch_later_outlined,
                          size: 40,),
                      ),
                      SizedBox(width: 30,),
                      Text('6 Hours',
                        style: TextStyle(
                            fontSize: 20
                        ),)
                    ],
                  ),

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0), // Sesuaikan nilai padding sesuai kebutuhan
                        child: Icon(Icons.book,
                          size: 40,),
                      ),
                      SizedBox(width: 30,height: 75,),
                      Text('Completion Certificate',
                        style: TextStyle(
                            fontSize: 20
                        ),)
                    ],
                  ),

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0), // Sesuaikan nilai padding sesuai kebutuhan
                        child: Icon(Icons.bar_chart,
                          size: 40,),
                      ),
                      SizedBox(width: 30,height: 40,),
                      Text('Beginner',
                        style: TextStyle(
                            fontSize: 20
                        ),)
                    ],
                  ),


                ],
              ),

              SizedBox(width: 50,height: 40,),
              Padding(
                padding: const EdgeInsets.only(left: 14.0), // Sesuaikan nilai padding sesuai kebutuhan
                child: Text('What Will I Learn?',
                style: TextStyle(
                  fontSize: 20),
                ),
              ),

              SizedBox(width: 50,height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 14.0), // Sesuaikan nilai padding sesuai kebutuhan
                child: Text('The Macine learning basics program is designed to offer a soli foundation & work-ready skills for ML engineers. The Macine learning basics program is designed to offer a soli foundation & work-ready skills for ML engineers. Read More'),
              ),

              SizedBox(width: 50,height: 40,),
              Padding(
                padding: const EdgeInsets.only(left: 14.0), // Sesuaikan nilai padding sesuai kebutuhan
                child: Text('Ratings and Reviews',
                  style: TextStyle(
                      fontSize: 20),
                ),
              ),

              Row(
                children: [
                  SizedBox(height: 120,),
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0), // Sesuaikan nilai padding sesuai kebutuhan
                    child:
                    Text('3.4',
                      style: TextStyle(
                          fontSize: 30),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 30,),
                          Icon(Icons.star,
                          color: Colors.amber,),
                          Icon(Icons.star,
                            color: Colors.amber,),
                          Icon(Icons.star,
                            color: Colors.amber,),
                          Icon(Icons.star,
                            color: Colors.grey,),
                          Icon(Icons.star,
                            color: Colors.grey,),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0), // Sesuaikan nilai padding sesuai kebutuhan
                        child:
                        Text('3 views',
                          style: TextStyle(
                              fontSize: 15),
                        ),
                      ),
                    ],
                  )
                ],
              ),

              Center(
                child: Card(
                  child: Container(
                    color: Colors.indigo,
                    width: 300,
                    height: 35,
                    child: Center(
                      child: Text(
                        'Start Learning',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
              )



            ],
          ),

        ),
      ),
    );
  }
}
