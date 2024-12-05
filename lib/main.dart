import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaskus/features/favorite/page.dart';
import 'package:kaskus/features/message/page.dart';
import 'package:kaskus/features/profile/page.dart';
import 'package:kaskus/features/home/pages/index/page.dart';
import 'package:kaskus/features/splashscreen/page.dart';
import 'package:kaskus/data/dataresource/auth_local_datasource.dart';
import 'package:kaskus/data/dataresource/auth_remote_datasource.dart';
import 'package:kaskus/features/auth/blocs/login_bloc.dart';
import 'package:kaskus/features/home/blocs/logout/logout_bloc.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'preferences/preferences.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(AuthRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => LogoutBloc(AuthRemoteDatasource()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xffffffff),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
          fontFamily: GoogleFonts.inter().fontFamily,
        ),
        home: FutureBuilder<bool>(
          future: AuthLocalDatasource().isAuthData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            if (snapshot.hasError) {
              return const Center(child: Text('Something went wrong.'));
            }

            if (snapshot.hasData && snapshot.data == true) {
              return const HomePage();
            } else {
              return const SplashScreen();
            }
          },
        ),
      ),
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

  final List<Widget> pages = const [
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
              width: 1.0,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
          child: SalomonBottomBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            items: [
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
