import 'package:flutter/material.dart';

class RechargeCard extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  RechargeCard({required this.screenWidth, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.9,
      margin: EdgeInsets.all(screenWidth * 0.04),
      padding: EdgeInsets.all(screenWidth * 0.04),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.import_export, color: Colors.black, size: 40),
              Text("-", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.pink)),
              SizedBox(width: 20),
              Text("|", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black12)),
              SizedBox(width: 20),
              Column(
                children: [
                  Text("0 Pack", style: TextStyle(fontSize: screenWidth * 0.05, fontWeight: FontWeight.bold)),
                  Text("Expired", style: TextStyle(color: Colors.red)),
                ],
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.orange,
                  side: BorderSide(color: Colors.orange, width: 1),
                ),
                child: Text("View Pack"),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent),
                child: Text("Recharge",style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
