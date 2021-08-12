import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: Offset(0, 10),
            blurRadius: 10,
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                alignment: Alignment.centerLeft,
                child: InkWell(
                  child: SvgPicture.asset('assets/icons/back.svg'),
                  onTap: () {
                    if (Navigator.of(context).canPop()) {
                      Navigator.of(context).pop();
                    }
                  },
                ),
              ),
              Text(
                'Living Room',
                style: TextStyle(fontSize: 18),
              ),
              Container(
                width: 60,
                alignment: Alignment.centerRight,
                child: Wrap(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/search.svg',
                      height: 18,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
