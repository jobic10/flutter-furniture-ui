import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBottomNavigation extends StatefulWidget {
  const AppBottomNavigation({Key? key}) : super(key: key);

  @override
  _AppBottomNavigationState createState() => _AppBottomNavigationState();
}

class _AppBottomNavigationState extends State<AppBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [1, 2].map((i) {
        return BottomNavigationBarItem(
          label: 'Home',
          icon: SvgPicture.asset('assets/icons/home.svg'),
        );
      }).toList(),
    );
  }
}
