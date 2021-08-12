import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_ui/data/fake.dart';
import 'package:furniture_ui/screens/category/widgets/vertical_sep.dart';
import 'package:furniture_ui/screens/home/widgets/cart.dart';

import 'action_button.dart';
import 'filter_modal_bottom_sheet.dart';

class Header extends StatelessWidget {
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
            padding: const EdgeInsets.symmetric(
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
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ActionButton(
                  imagePath: 'assets/icons/controls.svg',
                  title: 'Filter',
                  onTap: () {
                    _settingsModalBottomSheet(context);
                  },
                  isActive: true,
                ),
                VerticalSeperator(),
                ActionButton(
                  imagePath: 'assets/icons/sort.svg',
                  title: 'Sort',
                  onTap: () {},
                ),
                VerticalSeperator(),
                ActionButton(
                  imagePath: 'assets/icons/list.svg',
                  title: 'List',
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

void _settingsModalBottomSheet(BuildContext context) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    context: context,
    builder: (BuildContext context) {
      return FilterModalBottomSheet();
    },
  );
}
