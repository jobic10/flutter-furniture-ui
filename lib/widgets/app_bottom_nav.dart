import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_ui/constants/colors.dart';
import 'package:furniture_ui/data/fake.dart';

class AppBottomNavigation extends StatefulWidget {
  const AppBottomNavigation({Key? key}) : super(key: key);

  @override
  _AppBottomNavigationState createState() => _AppBottomNavigationState();
}

class _AppBottomNavigationState extends State<AppBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: Fake.menuItems.map((i) {
        return BottomNavigationBarItem(
          label: i['label'],
          activeIcon: SvgPicture.asset(
            i['icon'],
            color: primaryColor,
          ),
          icon: SvgPicture.asset(i['icon']),
        );
      }).toList(),
      currentIndex: 0,
      onTap: (val) {},
      selectedItemColor: primaryColor,
    );
  }
}
