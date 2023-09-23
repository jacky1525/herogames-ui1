import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:herogames_ui1/pages/feature.dart';

import '../constants.dart';

class SecondCard extends StatelessWidget {
  const SecondCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Feature",
                  style: GoogleFonts.montserrat(
                      color: Constants.titleColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Feature(),
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
          const SizedBox(
            height: 10,
          ),
          featureCard(context),
        ],
      ),
    );
  }

  Padding featureCard(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(children: [
            SizedBox(
              child: Wrap(
                direction: Axis.vertical,
                children: [
                  Text(
                    Constants.pVibes,
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    Constants.bMood1,
                    overflow: TextOverflow.visible,
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    Constants.bMood2,
                    overflow: TextOverflow.visible,
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    direction: Axis.horizontal,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 10,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent.shade400,
                            borderRadius: BorderRadius.circular(32)),
                        child: const Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "10 mins",
                        style: GoogleFonts.montserrat(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Expanded(child: Image.asset("assets/images/walking_dog.png")),
          ]),
          SizedBox(
            height: height * 0.03,
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            direction: Axis.horizontal,
            spacing: 10,
            children: [
              Container(
                height: 9,
                width: 9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.grey),
              ),
              Container(
                height: 7,
                width: 7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.grey.shade400),
              ),
              Container(
                height: 7,
                width: 7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.grey.shade400),
              ),
            ],
          )
        ],
      ),
    );
  }
}
