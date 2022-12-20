import 'package:flutter/material.dart';
import 'package:github_test/screens/page1_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 10),
      () {
        return Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const PageOneScreen();
            },
          ),
        );
      },
    );

    return Scaffold(
      backgroundColor: const Color.fromRGBO(34, 34, 34, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 45, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* the heading and the logo */
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Image(
                    image: AssetImage("assets/images/walletlogo.png"),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "Wallet",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'ClashDisplay',
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ],
              ),
              const SizedBox(
                height: 64,
              ),

              /* the center text */
              const Text(
                // ignore: unnecessary_string_escapes
                "Earn\nMoney\nTrade\nCrypto\nAnywhere",
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 48,
                  fontFamily: "ClashDisplay",
                ),
              ),
              const SizedBox(
                height: 45,
              ),

              /*  the second text */
              const Text(
                "All in one app to manage all your crypto\ncurrency financial transactions\nwhether at home or on the go",
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: "ClashDisplay",
                    fontWeight: FontWeight.w300),
              ),

              /* The register button */
              const SizedBox(
                height: 74,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  registerButton(),
                  signUpButtons(
                    const AssetImage("assets/images/apple.png"),
                  ),
                  signUpButtons(
                    const AssetImage("assets/images/google.png"),
                  ),
                ],
              ),
              const SizedBox(
                height: 79,
              ),
              /*Already signedIN */
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?\t\t",
                    style: GoogleFonts.inter(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Sign in",
                    style: GoogleFonts.inter(
                        color: const Color.fromRGBO(196, 235, 18, 1),
                        fontWeight: FontWeight.w600),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  InkWell signUpButtons(ImageProvider<Object> image) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 63,
        height: 42,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 27),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromRGBO(98, 98, 98, 1),
          ),
          image: DecorationImage(
            image: image,
          ),
        ),
        // child: Image(image: AssetImage("assets/images/apple.png"),),
      ),
    );
  }

  Container registerButton() {
    return Container(
      // width: double.infinity,
      width: 153,
      height: 42,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: const Color(0xffc4eb12),
          border: Border.all(color: Colors.white)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Register Now',
            style: TextStyle(fontFamily: 'ClashDisplay', fontSize: 16),
          )
        ],
      ),
    );
  }
}
