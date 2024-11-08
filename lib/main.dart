import 'package:kaskus/features/favorite/page.dart';
import 'package:kaskus/features/message/page.dart';
import 'package:kaskus/features/profile/page.dart';
import 'package:kaskus/features/home/pages/index/page.dart';
import 'package:kaskus/features/splashscreen/page.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'preferences/preferences.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffffffff),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
        fontFamily: GoogleFonts.inter().fontFamily,
      ),
      home: const SplashScreen(),
    );
  }
}


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int selectedIndex = 0;

  IconButton buildItemNav(IconData icon, int index) {
    return IconButton(
      onPressed: () {
        setState(() {
          selectedIndex = index;
        });
      },
      icon: Icon(icon, color: selectedIndex == index ? const Color(0xff6C5ECF) : const Color(0xff808191),),
    );
  }

  List<Widget> pages = const [
    HomePage(),
    MessagePage(),
    MessagePage(),
    FavoritePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
                color: Color(0xffe5e5e5),
                width: 1.0), // Customize border color and width
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
          child: SalomonBottomBar(
            currentIndex: selectedIndex,
            onTap: (index){
              setState(() {
                selectedIndex = index;
              });
            },
            items: [
              /// Home
              SalomonBottomBarItem(
                icon: const Icon(
                  CustomIcon.home,
                  color: Color(0xff383838),
                  size: 23,
                ),
                title: const Text(
                  "Home",
                  style: TextStyle(color: Color(0xff383838)),
                ),
                selectedColor: Colors.grey,
              ),

              /// Chat
              SalomonBottomBarItem(
                icon: const Icon(
                  CustomIcon.message,
                  color: Color(0xff383838),
                  size: 23,
                ),
                title: const Text(
                  "Message",
                  style: TextStyle(color: Color(0xff383838)),
                ),
                selectedColor: Colors.grey,
              ),

              /// Shop
              SalomonBottomBarItem(
                icon: const Icon(
                  Icons.shopping_bag,
                  size: 30,
                  color: Color(0xff383838),
                ),
                title: const Text(
                  "Shop",
                  style: TextStyle(color: Color(0xff383838)),
                ),
                selectedColor: Colors.grey,
              ),

              /// Wishlist
              SalomonBottomBarItem(
                icon: const Icon(
                  CustomIcon.favorite,
                  color: Color(0xff383838),
                  size: 23,
                ),
                title: const Text(
                  "Wishlist",
                  style: TextStyle(color: Color(0xff383838)),
                ),
                selectedColor: Colors.grey,
              ),

              /// Profile
              SalomonBottomBarItem(
                icon: const Icon(
                  CustomIcon.profile,
                  color: Color(0xff383838),
                  size: 23,
                ),
                title: const Text(
                  "Profile",
                  style: TextStyle(color: Color(0xff383838)),
                ),
                selectedColor: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
