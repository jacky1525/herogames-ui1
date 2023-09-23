import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:herogames_ui1/pages/exercise.dart';

import '../constants.dart';

class ThirdCard extends StatelessWidget {
  const ThirdCard({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Exercise",
                  style: GoogleFonts.montserrat(
                      color: Constants.titleColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Exercise(),
                  ));
                },
                child: Wrap(
                  direction: Axis.horizontal,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      "See more",
                      style: GoogleFonts.montserrat(
                          color: Colors.green.shade700,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.green.shade700,
                      size: 20,
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: height * 0.025,
          ),
          gridView(context)
        ],
      ),
    );
  }

  Padding gridView(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: GridView(
        padding: EdgeInsets.zero,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 25,
          mainAxisExtent: 50,
          mainAxisSpacing: 40,
        ),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          exerciseItem(context, "assets/images/relaxation.png", "Relaxation",
              Colors.purple),
          exerciseItem(context, "assets/images/meditation.png", "Meditation",
              Colors.pink),
          exerciseItem(context, "assets/images/breathing.png", "Breathing",
              Colors.orange),
          exerciseItem(
              context, "assets/images/yoga.png", "Yoga", Colors.blueAccent),
        ],
      ),
    );
  }

  Row exerciseItem(
      BuildContext context, String imgPath, String exercise, Color color) {
    var width = MediaQuery.of(context).size.width;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          imgPath,
          height: 40,
          width: 40,
          color: color,
        ),
        SizedBox(
          width: width * 0.015,
        ),
        Text(
          exercise,
          style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
