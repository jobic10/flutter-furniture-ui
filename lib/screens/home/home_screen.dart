import 'package:flutter/material.dart';
import 'package:furniture_ui/widgets/header.dart';
import 'package:furniture_ui/widgets/section.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Header(),
            Section(
              title: 'Categories',
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
