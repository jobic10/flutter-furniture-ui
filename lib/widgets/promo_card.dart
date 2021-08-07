import 'package:flutter/material.dart';
import 'package:furniture_ui/constants/colors.dart';

class PromoCard extends StatelessWidget {
  static final List<Color> bgColors = [primaryColor, secondaryPromoColor];
  final String title;
  final String subtitle;
  final String? caption;
  final String? tag;
  final String? imagePath;
  final String backgroundImagePath;
  final bool? reverseGradient;
  const PromoCard({
    Key? key,
    required this.title,
    required this.subtitle,
    this.caption,
    this.tag,
    this.imagePath,
    required this.backgroundImagePath,
    this.reverseGradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: 250,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: Offset.zero,
            blurRadius: 15,
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors:
              reverseGradient != null ? bgColors.reversed.toList() : bgColors,
        ),
        image: DecorationImage(
          image: AssetImage(backgroundImagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
