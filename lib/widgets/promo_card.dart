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
      child: Stack(
        children: [
          if (imagePath != null)
            Positioned(
              right: 0,
              bottom: 16,
              child: Image.asset(
                imagePath!,
              ),
            ),
          Wrap(
            direction: Axis.vertical,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  height: 1.5,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  height: 1.5,
                ),
              ),
            ],
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: this.tag != null
                ? Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    decoration: BoxDecoration(
                      color: tagBackgroundColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      tag!,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        height: 1.5,
                      ),
                    ),
                  )
                : Text(
                    this.caption ?? title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      height: 1.5,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
