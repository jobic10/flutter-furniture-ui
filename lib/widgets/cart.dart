import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_ui/constants/colors.dart';

class Cart extends StatelessWidget {
  final int numberOfItemsInCart;
  const Cart({Key? key, required this.numberOfItemsInCart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 24,
          height: 24,
          child: SvgPicture.asset('assets/icons/cart.svg'),
        ),
        if (numberOfItemsInCart > 0)
          Positioned(
            top: -4,
            right: -4,
            child: Container(
              width: 12,
              height: 12,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 1),
              ),
            ),
          ),
      ],
    );
  }
}
