import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_ui/constants/colors.dart';

class ActionButton extends StatelessWidget {
  final String title;
  final String imagePath;
  final Function() onTap;
  final bool isActive;

  const ActionButton({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.onTap,
    this.isActive = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Wrap(
        spacing: 10,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          SvgPicture.asset(
            imagePath,
            color: isActive ? primaryColor : Colors.black54,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: isActive ? primaryColor : Colors.black54,
                  fontSize: 16,
                ),
              ),
              if (isActive)
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
