import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_ui/constants/colors.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Wrap(
        spacing: 10,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/icons/controls.svg',
            color: primaryColor,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Text(
                'Filter',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 16,
                ),
              ),
              Positioned(
                top: -3,
                right: -12,
                child: Container(
                  width: 14,
                  height: 14,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/tick.svg',
                    height: 5,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
