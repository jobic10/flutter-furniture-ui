import 'package:flutter/material.dart';
import 'package:furniture_ui/constants/colors.dart';

class Section extends StatelessWidget {
  final String title;
  final List<Widget> children;
  const Section({Key? key, required this.title, required this.children})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 28),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  height: 1,
                ),
              ),
              InkWell(
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      'View all',
                      style: TextStyle(
                        fontSize: 18,
                        height: 1,
                        color: primaryColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Icon(
                        Icons.arrow_forward,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
        Container(
          child: SingleChildScrollView(
            // scrollDirection: Axis.horizontal,
            child: Wrap(
              children: children,
            ),
          ),
        ),
      ],
    );
  }
}
