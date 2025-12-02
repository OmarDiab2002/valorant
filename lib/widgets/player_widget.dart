import 'package:flutter/material.dart';

class PlayerWidget extends StatelessWidget {
  final Color firstColor;
  final Color secondColor;
  final String name;
  final String image;
  final String desc =
      "Well-dressed and well-armed, French weapons designer Chamber expels aggressors with deadly precision. He leverages his custom arsenal to hold the line and pick off enemies from afar, with a contingency built for every plan.";
  const PlayerWidget(
      {required this.firstColor,
      required this.secondColor,
      required this.name,
      required this.image,
      super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacementNamed(context, '/details',
            arguments: PlayerWidget(
                firstColor: firstColor,
                secondColor: secondColor,
                name: name,
                image: image));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.42,
        height: MediaQuery.of(context).size.height * 0.25,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [firstColor, secondColor],
              stops: [0, 100],
              begin: Alignment.topLeft,
            ),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(103),
                topLeft: Radius.circular(17),
                bottomRight: Radius.circular(22),
                bottomLeft: Radius.circular(59))),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Positioned(
                top: -80, child: Hero(tag: image, child: Image.asset(image))),
            Positioned(
              bottom: 10,
              child: Hero(
                tag: name,
                child: Material(
                  color: Colors.transparent,
                  child: Text(
                    name,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
