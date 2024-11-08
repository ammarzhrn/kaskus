import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kaskus/features/auth/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // berfungsi untuk mengubah warna atau style dari bagian navbar kamera (jam, wifi dan batre)
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    // Membuat splash screen (kyk tampilan pertama yg di tampilkan ketika membuka app selama 3 detik), HARUS STATEFULL GABISA STATELESS soalnya kita make initState dan initState itu miliknya si STATEFULL
    Future.delayed(const Duration(seconds: 3)).then((_){
      //Naigator pushReplacement dipake agar ketika splash screen telah di jalankan dan sudah selesai kita tidak bisa balik lg ke halaman splash screen kecuali di reload ulang
      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage(),),);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/logo.png', width: 130,),
      ),
    );
  }
}