import 'package:flutter/material.dart';
import 'package:slicing_ui_visayamami2c/screen_page/category_page.dart';
import 'package:slicing_ui_visayamami2c/screen_page/course_page.dart';
import 'package:slicing_ui_visayamami2c/screen_page/page_beranda.dart';
import 'package:slicing_ui_visayamami2c/screen_page/search_page.dart';
import 'session_manager.dart';

class PageBottomNavigationBar extends StatefulWidget {
  const PageBottomNavigationBar({Key? key});

  @override
  State<PageBottomNavigationBar> createState() =>
      _PageBottomNavigationBarState();
}

class _PageBottomNavigationBarState extends State<PageBottomNavigationBar>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  Color? containerColor;
  late SessionManager sessionManager;

  @override
  void initState() {
    super.initState();
    sessionManager = SessionManager();
    sessionManager.getSession();
    tabController = TabController(length: 3, vsync: this);
    containerColor = Colors.transparent;
    tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      containerColor = Colors.blue;
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            containerColor = Colors.blue;
          });
        },
        child: TabBarView(
          controller: tabController,
          children: [
            // content
            PageBeranda(),
            PageCourse(),
            PageSearch()
          ],
        ),
      ),
      bottomNavigationBar:
      BottomAppBar(
        child: SingleChildScrollView(
          child: Container(
            height: 56.5,
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: TabBar(
              controller: tabController,
              labelColor: Colors.blue,
              tabs: const [
                Tab(
                  text: "Home",
                  icon: Icon(Icons.home),
                ),
                Tab(
                  text: "My Course",
                  icon: Icon(Icons.video_library_rounded),
                ),
                Tab(
                  text: "Blogs",
                  icon: Icon(Icons.menu_book_outlined),
                ),
                Tab(
                  text: "Blogs",
                  icon: Icon(Icons.person_pin),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}