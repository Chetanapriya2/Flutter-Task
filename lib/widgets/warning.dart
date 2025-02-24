import 'package:flutter/material.dart';

class Warning extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  Warning({required this.screenWidth, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.9,
      padding: EdgeInsets.symmetric(
          vertical: screenWidth * 0.03, horizontal: screenWidth * 0.04),
      decoration: BoxDecoration(
        color: Colors.pink.shade50,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, color: Colors.red, size: screenWidth * 0.05),
          SizedBox(width: screenWidth * 0.02),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 14, color: Colors.red),
                children: [
                  TextSpan(
                      text: "Uh-oh! Your plan has expired ",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11)),
                  TextSpan(text: "Recharge now.", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11)),
                ],
              ),
            ),
          ),
          Text(
            "Recharge",
            style: TextStyle(
                color: Colors.deepPurple, fontWeight: FontWeight.bold, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
