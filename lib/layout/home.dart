import 'package:flutter/material.dart';
import 'package:valorant/core/theme/Appcolors.dart';
import 'package:valorant/widgets/player_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.navyBlue,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(
            flex: 2,
          ),
          //valo_logo
          Center(
              child: SizedBox(
            child: Image(
              image: AssetImage("assets/logos/valo_logo.png"),
            ),
          )),
          //choose your agent
          Center(
            child: Text(
              "Choose Your Agent",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                  color: Colors.white),
            ),
          ),
          Spacer(
            flex: 5,
          ),
          //first row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PlayerWidget(
                firstColor: AppColors.purple,
                secondColor: AppColors.red,
                name: "Fade",
                image: "assets/images/player1.png",
              ),
              PlayerWidget(
                  firstColor: AppColors.green,
                  secondColor: AppColors.lightGreen,
                  name: "Gekko",
                  image: "assets/images/player2.png")
            ],
          ),
          Spacer(
            flex: 4,
          ),
          //second row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PlayerWidget(
                firstColor: AppColors.lightBlue,
                secondColor: AppColors.blue,
                name: "Deadlock",
                image: "assets/images/player3.png",
              ),
              PlayerWidget(
                  firstColor: AppColors.orange,
                  secondColor: AppColors.brown,
                  name: "Breach",
                  image: "assets/images/player4.png")
            ],
          ),
          Spacer(
            flex: 3,
          ),
        ],
      )),
    );
  }
}
