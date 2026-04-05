import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const Color spotifyGreen = Color(0xFF1ED760);
  static const Color backgroundColor = Colors.black;
  static const Color borderColor = Color(0xFF535353);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const Spacer(),
              Image.asset('assets/logo_spotify.png', width: 70, height: 70),

              const SizedBox(height: 24),

              const Text(
                'Daftar untuk mulai\nmendengarkan',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  height: 1.2,
                ),
              ),

              const SizedBox(height: 30),

              const Spacer(),

              _buildPrimaryButtonWithIcon(
                icon: Icons.email_outlined,
                text: 'Lanjutkan dengan email',
                onPressed: () {},
              ),

              const SizedBox(height: 14),

              _buildOutlineButton(
                icon: Icons.phone_android,
                text: 'Lanjutkan dengan nomor HP',
                onPressed: () {},
              ),

              const SizedBox(height: 14),

              _buildGoogleButton(
                text: 'Lanjutkan dengan Google',
                onPressed: () {},
              ),
            
              

              const SizedBox(height: 32),

              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(fontSize: 14, color: Colors.white70),
                  children: [
                    TextSpan(text: 'Sudah punya akun? \n'),
                    TextSpan(
                      text: 'Masuk',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        
                      ),
                    ),
                  ],
                ),
              ),

              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _buildPrimaryButtonWithIcon({
    required IconData icon,
    required String text,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: spotifyGreen,
          foregroundColor: Colors.black,
          elevation: 0,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Icon(icon, size: 20, color: Colors.black),
              ),
            ),
            Center(
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildOutlineButton({
    required IconData icon,
    required String text,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: borderColor, width: 1.2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
          padding: EdgeInsets.zero,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Icon(icon, color: Colors.white, size: 20),
              ),
            ),
            Center(
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildGoogleButton({
    required String text,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: borderColor, width: 1.2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
          padding: EdgeInsets.zero,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Image.asset(
                  'assets/logo_google.png',
                  width: 20,
                  height: 20,
                ),
              ),
            ),
            Center(
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
