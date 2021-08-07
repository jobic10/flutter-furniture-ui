import 'package:flutter/material.dart';
import 'package:furniture_ui/data/fake.dart';
import 'package:furniture_ui/widgets/cart.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 28, vertical: 16),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Furniture Shop',
                style: TextStyle(fontSize: 28, height: 1),
              ),
              Cart(numberOfItemsInCart: Fake.numberOfItemsInCart),
            ],
          ),
          Text(
            'Get unique furniture for your home',
            style: TextStyle(
              fontSize: 15,
              height: 2,
              color: Colors.black38,
            ),
          ),
        ],
      ),
    );
  }
}
