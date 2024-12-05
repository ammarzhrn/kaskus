import 'package:kaskus/features/auth/forgot.dart';
import 'package:kaskus/main.dart';
import 'package:flutter/material.dart';
import 'package:kaskus/features/home/pages/index/page.dart';
import 'package:kaskus/features/auth/register.dart';
import 'package:kaskus/features/auth/blocs/login_bloc.dart';
import 'package:kaskus/data/dataresource/auth_local_datasource.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaskus/core/components/button.dart';
import 'package:kaskus/core/components/custom_text_field.dart';
import 'package:kaskus/core/components/spaces.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 40.0, right: 40.0, top: 100.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 130,
            ),
            const SizedBox(height: 20),
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 20),

            // Email TextField
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Email',
                  style: TextStyle(fontSize: 16, color: Color(0xFF37352F)),
                ),
                const SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8F8F6),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: CustomTextField(
                      controller: usernameController,
                      hintText: 'Enter your email...',
                      prefixIcon: const Icon(Icons.email),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Password TextField
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Password',
                  style: TextStyle(fontSize: 16, color: Color(0xFF37352F)),
                ),
                const SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8F8F6),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: CustomTextField(
                      controller: passwordController,
                      hintText: 'Enter your password...',
                      obscureText: true,
                      prefixIcon: const Icon(Icons.lock),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Login Button with BlocListener and BlocBuilder
            BlocListener<LoginBloc, LoginState>(
              listener: (context, state) {
                if (state is LoginSuccess) {
                  AuthLocalDatasource().saveAuthData(state.authResponseModel);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MainPage()),
                  );
                }
                if (state is LoginFailure) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.message),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              child: BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) {
                  if (state is LoginLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  return Button.filled(
                    onPressed: () {
                      context.read<LoginBloc>().add(LoginButtonPressed(
                          email: usernameController.text,
                          password: passwordController.text));
                    },
                    label: 'Login',
                  );
                },
              ),
            ),
            const SizedBox(height: 20),

            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            const SizedBox(height: 20),

            // Google Login Button
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/google.png',
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Continue with Google',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Apple Login Button
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/apple.png',
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Continue with Apple',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // Don't have an account text
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
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
