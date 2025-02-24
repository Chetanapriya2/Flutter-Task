import 'package:flutter/material.dart';
import '../widgets/quick_actions.dart';
import '../widgets/recharge_card.dart';
import '../widgets/warning.dart';
import '../widgets/offer.dart';

class RechargeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.orange.shade600, Colors.white, Colors.white],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05, vertical: screenHeight * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Text(
                                  "Good Afternoon, Chetana Priya",
                                  style: TextStyle(fontSize: screenWidth * 0.05, color: Colors.black, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 8),
                                Icon(Icons.arrow_drop_down_circle, color: Colors.black, size: screenWidth * 0.06),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.005),
                      Row(
                        children: [
                          Text(
                            "9618566951",
                            style: TextStyle(fontSize: screenWidth * 0.045, color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: screenWidth * 0.02),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04, vertical: screenHeight * 0.005),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "Prepaid",
                              style: TextStyle(color: Colors.orangeAccent, fontSize: screenWidth * 0.035),
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.notifications_rounded, color: Colors.black, size: screenWidth * 0.08),
                        ],
                      ),
                    ],
                  ),
                ),
                
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(height: 200,width: screenWidth,decoration: BoxDecoration(color: Colors.transparent),),
                    Positioned(
                      bottom: 25,
                        child: Warning(screenWidth: screenWidth, screenHeight: screenHeight)), 
                    RechargeCard(screenWidth: screenWidth, screenHeight: screenHeight),  
                  ],
                ),

                Offer(screenWidth: screenWidth, screenHeight: screenHeight),
                SizedBox(height: screenHeight * 0.02),
                QuickActions(screenWidth: screenWidth, screenHeight: screenHeight),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
