import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:herogames_ui1/constants.dart';

class FirstCard extends StatelessWidget {
  const FirstCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            direction: Axis.horizontal,
            children: [
              Text(
                Constants.startTitle,
                style: GoogleFonts.montserrat(
                    color: Constants.titleColor, fontSize: 24),
              ),
              Text(
                Constants.endTitle,
                style: GoogleFonts.montserrat(
                    color: Constants.titleColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            Constants.subTitle,
            style: GoogleFonts.montserrat(
                fontSize: 18, color: Constants.titleColor),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              emoteItem("assets/images/love.png", "Love"),
              emoteItem("assets/images/cool.png", "Cool"),
              emoteItem("assets/images/happy.png", "Happy"),
              emoteItem("assets/images/sad.png", "Sad"),
            ],
          )
        ],
      ),
    );
  }

  Wrap emoteItem(String path, String emote) {
    return Wrap(
      direction: Axis.vertical,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 5,
      children: [
        Container(
          height: 65,
          width: 65,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(path), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        Text(
          emote,
          style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
