import 'package:flutter/material.dart';
import 'package:valorant/core/theme/Appcolors.dart';
import 'package:valorant/widgets/player_widget.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var player = ModalRoute.of(context)?.settings.arguments as PlayerWidget;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [player.firstColor, player.secondColor],
        stops: [0, 100],
        begin: Alignment.topLeft,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          forceMaterialTransparency: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              icon: Icon(
                Icons.arrow_back_sharp,
                color: Colors.white,
              )),
          title: Hero(
            tag: player.name,
            child: Material(
              color: Colors.transparent,
              child: Text(
                player.name,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
          ),
          actions: [
            ImageIcon(
              AssetImage("assets/icons/desc_icon.png"),
              color: Colors.white,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.45,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage("assets/images/background_image.png"))),
                child: Hero(
                  tag: player.image,
                  child: Image.asset(
                    player.image,
                    fit: BoxFit.fitHeight,
                    height: double.infinity,
                  ),
                ),
              ),
              Spacer(),
              Text("Description",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white)),
              Spacer(),
              Text(player.desc,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
              Spacer(),
              Text("Abilities",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white)),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/logos/ability1.png"),
                  Image.asset("assets/logos/ability2.png"),
                  Image.asset("assets/logos/ability3.png"),
                  Image.asset("assets/logos/ability4.png"),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
