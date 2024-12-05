import 'package:flutter/material.dart';
import 'package:kaskus/features/home/pages/index/page.dart';
import 'package:kaskus/features/auth/register.dart';
import 'package:kaskus/features/auth/pages/login.dart';

import '../../main.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
        padding: const EdgeInsets.only(left: 40.0, right: 40.0, top: 100.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 130,
            ),
            const SizedBox(height: 20,),

            const Text(
              'Forgot Password',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 150,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8F8F6), // Warna latar belakang
                    borderRadius: BorderRadius.circular(8), // Efek rounded
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 13.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your email...',
                        hintStyle: TextStyle(
                          color: Colors.grey, // Warna placeholder
                          fontSize: 16,
                        ),
                        border: InputBorder.none, // Hilangkan border default
                      ),
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),

            GestureDetector(
              onTap: () {
                // Pindah ke halaman HomePage saat di-klik
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const MainPage()),
                        (Route<dynamic> route) => false);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFFFFC1C1), // Border sesuai dengan gambar
                  ),
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFFFDF5F2),
                ),
                child: const Center(
                  child: Text(
                    'Send',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFEB5757),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 150),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginPage()),
                    );
                  },
                  child: const Text('Already have an account?', style: TextStyle(color: Colors.black),),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
