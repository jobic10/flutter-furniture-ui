import 'package:flutter/material.dart';
import 'package:furniture_ui/data/fake.dart';
import 'package:furniture_ui/widgets/app_bottom_nav.dart';
import 'package:furniture_ui/widgets/category_card.dart';
import 'package:furniture_ui/widgets/header.dart';
import 'package:furniture_ui/widgets/image_card.dart';
import 'package:furniture_ui/widgets/promo_card.dart';
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
                          title: e.title, iconPath: e.iconPath, onTap: () {}),
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
