import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  QuickActions({required this.screenWidth, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
      child: Container(
        padding: EdgeInsets.all(screenWidth * 0.04),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(4, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min, 
          children: [
            Text(
              "Quick Actions",
              style: TextStyle(
                fontSize: screenWidth * 0.05,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: screenHeight * 0.015),

            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: screenHeight * 0.25, 
              ),
              child: GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                childAspectRatio: 0.85, 
                mainAxisSpacing: screenHeight * 0.01, 
                crossAxisSpacing: screenWidth * 0.02,
                children: [
                  Item(Icons.install_mobile, "Recharge"),
                  Item(Icons.receipt, "Pay Bill"),
                  Item(Icons.phone, "Landline"),
                  Item(Icons.wifi, "Book Fiber"),
                  Item(Icons.sim_card, "Upgrade to 4G SIM"),
                  Item(Icons.format_list_numbered, "Choose Your Number"),
                  Item(Icons.do_not_disturb, "Do Not Disturb"),
                  Item(Icons.games, "Games"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Item(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: screenWidth * 0.13, 
          width: screenWidth * 0.13,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black12,
          ),
          child: Icon(icon, size: screenWidth * 0.06, color: Colors.black),
        ),
        SizedBox(height: 3), 
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: screenWidth * 0.028),
        ),
      ],
    );
  }
}
