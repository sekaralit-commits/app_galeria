import 'package:flutter/material.dart';
import 'package:app_galeria/main_home_screen.dart';
import 'package:app_galeria/signup_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void navigateToHome() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => MainHomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),

              // ===== LOGO =====
              Image.asset(
                'assets/splash_galeria.png',
                height: 80,
              ),

              const SizedBox(height: 24),

              // ===== TITLE =====
              const Text(
                'Selamat Datang di Galeria!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'Masuk untuk melanjutkan',
                style: TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 32),

              // ===== TAB MENU =====
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: const [
                      Text(
                        'Masuk',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      SizedBox(height: 4),
                      SizedBox(
                        width: 60,
                        height: 2,
                        child: DecoratedBox(
                          decoration: BoxDecoration(color: Color.fromARGB(255, 255, 98, 150)),
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const SignUpScreen()),
    );
  },
  child: const Text(
    'Daftar',
    style: TextStyle(color: Colors.black54),
  ),
),

                ],
              ),

              const SizedBox(height: 32),

              // ===== FORM =====
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    // Email
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      validator: (value) =>
                          value!.isEmpty ? 'Email wajib diisi' : null,
                    ),
                    const SizedBox(height: 16),

                    // Password
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Kata Sandi',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      validator: (value) =>
                          value!.isEmpty ? 'Password wajib diisi' : null,
                    ),

                    const SizedBox(height: 12),

                    // Forgot Password
                    Row(
                      children: [
                        const Text('Lupa kata sandi? '),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            'Atur ulang',
                            style: TextStyle(
                              color:Color.fromARGB(255, 255, 98, 150),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 24),

                    // ===== LOGIN BUTTON =====
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: navigateToHome,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 255, 98, 150),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'Masuk',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
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
