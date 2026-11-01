import 'package:flutter/material.dart';
import 'login_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B2033),

      body: SafeArea(
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginView(),
              ),
            );
          },

          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 74,
                      height: 74,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black54,
                            blurRadius: 20,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/images/logo.png',
                          width: 52,
                        ),
                      ),
                    ),

                    const SizedBox(height: 22),
                    const Text(
                      'StudyPress',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        letterSpacing: -0.2,
                      ),
                    ),

                    const SizedBox(height: 8),
                    const Text('প্রস্তুতির সঙ্গী',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF8FA3B4),
                      ),
                    ),

                    const SizedBox(height: 22),
                    Container(
                      width: 34,
                      height: 3,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE8A500),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ],
                ),
              ),
              const Positioned(
                bottom: 34,
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    'tap to continue →',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF5C7284),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}