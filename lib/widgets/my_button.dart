import 'package:flutter/material.dart';

import '../utils/utils.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final IconData? icon;
  final bool? isColor;
  const MyButton({
    Key? key,
    required this.buttonText,
    required this.icon,
    this.isColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        width: double.infinity,
        height: 42,
        alignment: Alignment.center,
        decoration:  BoxDecoration(
          color: isColor == null? const Color(0xffc4eb12) : backgroundColor1,
          border: Border.all(color: isColor == null ? Colors.white : Colors.black)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Icon(icon),
            const SizedBox(
              width: 4,
            ),
            Text(
              buttonText,
              style: const TextStyle(fontFamily: 'ClashDisplay', fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
