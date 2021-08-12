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
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      showSelectedLabels: true,
      unselectedItemColor: Colors.black87,
      elevation: 3,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(
        height: 1.5,
        fontSize: 12,
      ),
      unselectedLabelStyle: TextStyle(
        height: 1.3,
        fontSize: 10,
      ),
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
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      selectedItemColor: primaryColor,
    );
  }
}
