import 'package:flutter/material.dart';
import 'package:github_test/screens/intro_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 10),
      () {
        return Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const IntroScreen();
            },
          ),
        );
      },
    );

    return Scaffold(
      backgroundColor: const Color.fromRGBO(34, 34, 34, 1),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(
                    image: AssetImage("assets/images/walletlogo.png"),
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "Wallet",
                    style: TextStyle(
                        fontSize: 28,
                        fontFamily: 'ClashDisplay',
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const SizedBox(
                width: 40,
                child: LinearProgressIndicator(
                  color: Colors.lime,
                  backgroundColor: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
