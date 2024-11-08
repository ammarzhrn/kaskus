import 'package:kaskus/features/auth/forgot.dart';
import 'package:kaskus/main.dart';
import 'package:flutter/material.dart';
import 'package:kaskus/features/home/pages/index/page.dart';
import 'package:kaskus/features/auth/register.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
            const SizedBox(
              height: 20,
            ),

            const Text(
              'Login',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Label untuk TextField
                const Text(
                  'Email',
                  style: TextStyle(fontSize: 16, color: Color(0xFF37352F)),
                ),
                const SizedBox(height: 8),
                // Memberikan sedikit jarak antara label dan TextField

                // TextField dengan dekorasi yang sama seperti sebelumnya
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
            const SizedBox(
              height: 20,
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Label untuk TextField
                const Text(
                  'Password',
                  style: TextStyle(fontSize: 16, color: Color(0xFF37352F)),
                ),
                const SizedBox(height: 8),
                // Memberikan sedikit jarak antara label dan TextField

                // TextField dengan dekorasi yang sama seperti sebelumnya
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8F8F6), // Warna latar belakang
                    borderRadius: BorderRadius.circular(8), // Efek rounded
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 13.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your password...',
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
            const SizedBox(
              height: 20,
            ),

            GestureDetector(
              onTap: () {
                // Pindah ke halaman HomePage saat di-klik
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const MainPage()),
                    (Route<dynamic> route) => false);
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                decoration: BoxDecoration(
                  border: Border.all(
                    color:
                        const Color(0xFFFFC1C1), // Border sesuai dengan gambar
                  ),
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFFFDF5F2),
                ),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFEB5757),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            const Divider(
              thickness: 1, // Ketebalan garis
              color: Colors.grey, // Warna garis
            ),
            const SizedBox(height: 20),

            // Tombol "Continue with Google"
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey, // Border sesuai dengan gambar
                ),
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/google.png',
                    // Pastikan ikon Google ada di path ini
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Continue with Google',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // Jarak antara tombol Google dan Apple

            // Tombol "Continue with Apple"
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey, // Border sesuai dengan gambar
                ),
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/apple.png',
                    // Pastikan ikon Apple ada di path ini
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Continue with Apple',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterPage()),
                    );
                  },
                  child: const Text(
                    'Don’t have an account?',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgotPasswordPage()),
                      );
                    },
                    child: const Text(
                      'Forgot password?',
                      style: TextStyle(color: Colors.black),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
