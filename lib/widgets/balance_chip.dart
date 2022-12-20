import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BalanceChipWidget extends StatelessWidget {
  final String upperText;
  final String lowerText;
  const BalanceChipWidget({super.key, required this.lowerText, required this.upperText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // icon
        const Icon(
          Icons.wallet,
          size: 24,
          color: Colors.white,
        ),

        // column for text
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              upperText,
              style: GoogleFonts.inter(
                fontSize: 8,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Text(
              lowerText,
              style: const TextStyle(
                  fontSize: 12,
                  fontFamily: "ClashDisplay",
                  color: Color(0xffc4eb12)),
            ),
          ],
        )
      ],
    );
  }
}
