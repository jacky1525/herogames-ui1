import 'package:flutter/material.dart';
import 'package:herogames_ui1/cubit/main_cubit.dart';
import 'package:herogames_ui1/widgets/first_card.dart';
import 'package:herogames_ui1/widgets/notification_icon.dart';
import 'package:herogames_ui1/widgets/second_card.dart';
import 'package:herogames_ui1/widgets/third_card.dart';

class HomePage extends StatefulWidget {
  final MainCubit mainCubit;
  const HomePage({super.key, required this.mainCubit});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.025,
                ),
                NotificationIcon(mainCubit: widget.mainCubit),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const FirstCard(),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    const SecondCard(),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    const ThirdCard(),
                    SizedBox(
                      height: height * 0.1,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
