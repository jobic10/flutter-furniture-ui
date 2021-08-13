import 'package:flutter/material.dart';
import 'package:furniture_ui/data/fake.dart';
import 'package:furniture_ui/screens/home/widgets/app_bottom_nav.dart';
import 'widgets/furniture_grid_item.dart';
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
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: HeaderSliver(minExtent: 120, maxExtent: 120),
              pinned: true,
              floating: true,
            ),
            SliverGrid.count(
              crossAxisCount: 2,
              childAspectRatio: 0.65,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              children: Fake.furnitures
                  .asMap()
                  .entries
                  .map(
                    (e) => FurnitureGridItem(
                      item: e.value,
                      margin: EdgeInsets.only(
                          left: e.key.isEven ? 15 : 0,
                          right: e.key.isOdd ? 15 : 0),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
