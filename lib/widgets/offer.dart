import 'package:flutter/material.dart';

class Offer extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  Offer({required this.screenWidth, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
      child: Container(
        padding: EdgeInsets.all(screenWidth * 0.03),
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("App Exclusive Offer", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: screenHeight * 0.005),
                  Text("Applicable on recharges above Rs 249.", style: TextStyle(fontSize: 12)),
                  SizedBox(height: screenHeight * 0.008),
                  Row(
                    children: [
                      Text("Check Now", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                      SizedBox(width: 5,),
                      Icon(Icons.arrow_forward_ios, size: 16),

                    ],
                  ),
                  SizedBox(height: screenHeight * 0.005),
                  Text("T&C apply", style: TextStyle(fontSize: 10, color: Colors.grey)),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("2", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.orange)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Get", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.blueAccent)),
                    Text("% OFF", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.blueAccent)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
