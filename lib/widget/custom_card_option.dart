import 'package:flutter/material.dart';

class CustomCardOptions extends StatelessWidget {
  const CustomCardOptions({
    super.key,
    this.isChoice = false,
    required this.text,
  });
  final bool isChoice;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 22),
      decoration: BoxDecoration(
        color: isChoice ? const Color(0xff149954) : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: isChoice
            ? null
            : Border.all(
                color: Colors.black,
                width: 0.6,
              ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isChoice ? Colors.white : Colors.black,
          fontSize: 12,
        ),
      ),
    );
  }
}
