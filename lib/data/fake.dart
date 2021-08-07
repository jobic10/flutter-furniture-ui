import 'package:furniture_ui/models/category.dart';
import 'package:furniture_ui/models/promo.dart';

class Fake {
  static int numberOfItemsInCart = 12;

  static List<Category> categories = [
    Category('assets/icons/chest.svg', 'Living Room'),
    Category('assets/icons/bathtub.svg', 'Bathroom'),
    Category('assets/icons/desk.svg', 'WorkSpace'),
  ];

  static List<Promo> promos = [
    Promo(
      backgroundImagePath: 'assets/images/splash1.png',
      reverseGradient: false,
      title: 'All item furniture\nDiscount up to',
      subtitle: '50%',
      tag: 'August 7, 2021',
      imagePath: 'assets/images/furniture/furniture1.png',
    ),
    Promo(
      backgroundImagePath: 'assets/images/splash2.png',
      reverseGradient: true,
      title: 'Get voucher gift',
      subtitle: '\$50.00',
    ),
  ];
}
