import 'package:flutter/material.dart';
import 'package:github_test/utils/utils.dart';
import 'package:github_test/widgets/currency_card.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/balance_chip.dart';
import '../widgets/my_button.dart';

class PageOneScreen extends StatelessWidget {
  const PageOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(24, 35, 24, 0),
          children: [
            /*
              HEADING CONTAINING THE INTRO TEXT AND IMAGE
            */
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'My wallet',
                      style:
                          TextStyle(fontFamily: 'ClashDisplay', fontSize: 20),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Hello, Kayce',
                      style: GoogleFonts.inter(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                // image of the header
                Container(
                  width: 44,
                  height: 44,
                  padding: const EdgeInsets.all(100),
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/ifeanyi.jpg"),
                        fit: BoxFit.cover),
                  ),
                  // child: Image(image: AssetImage('assets/images/ifeanyi.jpg')),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),

            /* 
              THE CARD THAT HOUSE THE EXPENSES
            */
            Stack(
              alignment: Alignment.center,
              children: [
                cardContainer(),
                Positioned(
                  right: -20,
                  bottom: -10,
                  child: circularDots(),
                ),
                Positioned(
                  left: -20,
                  top: -10,
                  child: circularDots(),
                ),
                Positioned(
                  left: -20,
                  top: -10,
                  child: circularDots(),
                ),
                Positioned(
                  left: 20,
                  bottom: -10,
                  child: circularDots(),
                ),

                // the text
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // upper text
                      Column(children: [
                        Text(
                          'Total Balance',
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        const Text(
                          'N1,788,000',
                          style: TextStyle(
                            fontFamily: 'ClashDisplay',
                            fontSize: 24,
                            color: Color(0xffc4eb12),
                          ),
                        )
                      ]),

                      // lower text
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            BalanceChipWidget(
                                upperText: "Your income",
                                lowerText: 'N6000.00'),
                            BalanceChipWidget(
                                upperText: "Your expenses",
                                lowerText: "N8000.00"),
                            // customWidget here
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            /**
             * THE TWO BUTTONS
            */
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                MyButton(buttonText: "Trade", icon: Icons.currency_exchange),
                SizedBox(
                  width: 10,
                ),
                MyButton(
                  buttonText: "Add money",
                  icon: Icons.add_circle_outline,
                  isColor: false,
                ),
              ],
            ),

            const SizedBox(
              height: 24,
            ),
            /*
              Divider
            */
            const Divider(
              color: Color(0xffb1b1b1),
              thickness: 1.5,
            ),

            const SizedBox(
              height: 24,
            ),

            /*
              THE TRANSACTION PART 
            */
            const Text(
              'Recent transactions',
              style: TextStyle(fontFamily: 'ClashDisplay', fontSize: 16),
            ),
            const SizedBox(
              height: 24,
            ),
            //  the list of the card in the app
            Column(
              children: data
                  .map((singleCardInfo) => CurrencyCardWidget(
                        cardInfo: singleCardInfo,
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: 1,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/images/home.png"),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("assets/images/card.png"),
              ),
              label: "Transactions"),
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("assets/images/trade.png"),
              ),
              label: "Trade"),
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("assets/images/message.png"),
              ),
              label: "Transactions"),
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("assets/images/frame.png"),
              ),
              label: "Transactions"),
        ],
      ),
    );
  }

  Container cardContainer() {
    return Container(
      width: double.infinity,
      height: 154,
      decoration: const BoxDecoration(color: Color(0xff222222)),
    );
  }

  Container circularDots() {
    return Container(
      padding: const EdgeInsets.all(12),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        // color: Color(0xffC4EB12),
        shape: BoxShape.circle,
        border: Border.all(
          width: 8,
          color: const Color(0xffC4EB12),
        ),
      ),
    );
  }
}
