import 'package:dairyapp/features/authentication/presentation/pages/user_login.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: const Color(0xFF2C9EE0),
      // ),
      body: Container(
        color: const Color(0xFF2C9EE0),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildLogo(),
                  const SizedBox(height: 10),
                  const Text(
                    'Your One-Stop Dairy Manager',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 60),
                  _buildGetStartedButton(context),
                ],
              ),
            ),
            _buildFooterImage(),
          ],
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Transform.translate(
      offset: const Offset(0, -90),
      child: Image.asset("assets/images/dairy_go_logo.png"),
    );
  }

  Widget _buildGetStartedButton(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -90),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20), // Add padding here
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, 'send-otp');
          },
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 50),
            backgroundColor: Colors.white,
            foregroundColor: const Color(0xFF2C9EE0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text('Let\'s Get Started!'),
        ),
      ),
    );
  }

  Widget _buildFooterImage() {
    return Positioned(
      bottom: 0,
      right: 5,
      left: 5,
      child: Transform.scale(
        scale: 1.14,
        child: Image.asset("assets/images/footerMilkSplash.png"),
      ),
    );
  }
}
