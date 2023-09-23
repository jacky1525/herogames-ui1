import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:herogames_ui1/cubit/main_cubit.dart';
import 'package:herogames_ui1/pages/apps.dart';
import 'package:herogames_ui1/pages/calendar.dart';
import 'package:herogames_ui1/pages/homepage.dart';
import 'package:herogames_ui1/pages/profile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late List<Widget> allPages;
  late HomePage homePage;
  late AppsPage appsPage;
  late CalendarPage calendarPage;
  late ProfilePage profilePage;
  late MainCubit mainCubit;

  @override
  void initState() {
    super.initState();
    mainCubit = BlocProvider.of<MainCubit>(context);
    homePage = HomePage(
      mainCubit: mainCubit,
    );
    appsPage = const AppsPage();
    calendarPage = const CalendarPage();
    profilePage = const ProfilePage();
    allPages = [homePage, appsPage, calendarPage, profilePage];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MainCubit, MainState>(
        bloc: mainCubit,
        builder: (context, state) {
          return allPages[state.selectedPageItem];
        },
      ),
      bottomNavigationBar: bottomNavMenu(),
    );
  }

  bottomNavMenu() {
    return BlocBuilder<MainCubit, MainState>(
      bloc: mainCubit,
      builder: (context, state) {
        return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: mainCubit.state.selectedPageItem,
            onTap: (value) {
              mainCubit.setPage(value);
            },
            items: [
              bottomBarItem(0, Icons.home_outlined),
              bottomBarItem(1, Icons.apps),
              bottomBarItem(2, Icons.calendar_today_outlined),
              bottomBarItem(3, Icons.person),
            ]);
      },
    );
  }

  BottomNavigationBarItem bottomBarItem(int index, IconData icon) {
    return BottomNavigationBarItem(
      label: "",
      icon: mainCubit.state.selectedPageItem == index
          ? Wrap(
              direction: Axis.vertical,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 7,
              children: [
                Icon(
                  icon,
                  color: Colors.green.shade700,
                  size: 32,
                ),
                Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                    color: Colors.green.shade700,
                    borderRadius: BorderRadius.circular(24),
                  ),
                )
              ],
            )
          : Icon(
              icon,
              color: Colors.blueGrey,
              size: 28,
            ),
    );
  }
}
