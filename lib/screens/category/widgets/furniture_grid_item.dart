import 'package:flutter/material.dart';
import 'package:furniture_ui/constants/colors.dart';

import 'package:furniture_ui/models/item.dart';

class FurnitureGridItem extends StatelessWidget {
  final Item item;
  const FurnitureGridItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: Offset.zero,
            blurRadius: 15,
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 37),
                  height: 180,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        item.imagePath,
                      ),
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                ),
                if (item.discountPercent > 0)
                  Positioned(
                    top: 16,
                    right: 16,
                    child: Container(
                      width: 40,
                      height: 40,
                      alignment: Alignment.center,
                      child: Text(
                        '${item.discountPercent} %',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}