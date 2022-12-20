import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CurrencyCardWidget extends StatelessWidget {
  final Map<String, dynamic> cardInfo;
  const CurrencyCardWidget({super.key, required this.cardInfo});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row( // parrent row
        children: [
          // image
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.black
            ),
            child: Icon(cardInfo['icon'], size: 30, color: Colors.white,),
          ),

          const SizedBox(width: 8,),
          // second row
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                // first child column
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(cardInfo['title'], style: const TextStyle(fontFamily: 'ClashDisplay'),),
                    Text(cardInfo["date_sent"], style: GoogleFonts.inter(fontSize: 10, fontWeight: FontWeight.w500),)
                  ],
                ),
          
                // second child column
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(cardInfo["amount_sent"], style: const TextStyle(fontFamily: 'ClashDisplay'),),
                    Row(
                      children: [
                        Icon(Icons.currency_exchange, size: 14, color: cardInfo["operation"] == "Sent" ?Colors.red : Colors.green ,),
                        const SizedBox(width: 4,),
                        Text(cardInfo["operation"], style: GoogleFonts.inter(fontSize: 10, fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}