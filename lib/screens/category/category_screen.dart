import 'package:flutter/material.dart';
import 'package:furniture_ui/widgets/app_bottom_nav.dart';

import 'widgets/header_sliver.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNavigation(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SliverPersistentHeader(
            delegate: HeaderSliver(minExtent: 120, maxExtent: 120),
            pinned: true,
            floating: true,
          ),
        ),
      ),
    );
  }
}
