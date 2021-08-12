import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_ui/data/fake.dart';
import 'package:furniture_ui/screens/home/widgets/cart.dart';

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
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 28,
              vertical: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 10,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/search.svg',
                        height: 18,
                      ),
                      Cart(numberOfItemsInCart: Fake.numberOfItemsInCart)
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
