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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  height: 1.5,
                ),
              ),
              Wrap(
                spacing: 4,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Text(
                    '${Item.format(item.price)}',
                    style: TextStyle(
                      fontSize: 18,
                      color: primaryColor,
                      height: 1.5,
                    ),
                  ),
                  if (item.discountPercent > 0)
                    Text(
                      '${Item.format(item.originalPrice)}',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black38,
                          height: 1.5,
                          decoration: TextDecoration.lineThrough),
                    ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
