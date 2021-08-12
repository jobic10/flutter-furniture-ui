import 'package:flutter/material.dart';
import 'package:furniture_ui/data/fake.dart';
import 'package:furniture_ui/screens/category/category_screen.dart';
import 'widgets/app_bottom_nav.dart';
import 'widgets/category_card.dart';
import 'widgets/header.dart';
import 'widgets/image_card.dart';
import 'widgets/promo_card.dart';
import 'widgets/section.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  onCategorySelected(category) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => CategoryScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNavigation(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              Section(
                title: 'Categories',
                children: Fake.categories
                    .map(
                      (e) => CategoryCard(
                          title: e.title,
                          iconPath: e.iconPath,
                          onTap: () {
                            onCategorySelected(e);
                          }),
                    )
                    .toList(),
              ),
              Section(
                  title: 'Today\'s Promo',
                  children: Fake.promos
                      .map(
                        (e) => PromoCard(
                          backgroundImagePath: e.backgroundImagePath,
                          reverseGradient: e.reverseGradient,
                          subtitle: e.subtitle,
                          title: e.title,
                          caption: e.caption,
                          imagePath: e.imagePath,
                          tag: e.tag,
                        ),
                      )
                      .toList()),
              Section(
                title: 'Trending Furniture',
                children: Fake.trending
                    .map((img) => ImageCard(imagePath: img))
                    .toList(),
              ),
              Section(
                title: 'Featured Furniture',
                children: Fake.featured
                    .map((img) => ImageCard(imagePath: img))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
