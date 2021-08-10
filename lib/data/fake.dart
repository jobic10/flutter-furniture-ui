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
        caption: '*For new members\nof Furniture shop'),
  ];

  static List<String> trending = [
    'assets/images/furniture/jacalyn-beales-435629-unsplash.png',
    'assets/images/furniture/sven-brandsma-1379481-unsplash.png',
  ];

  static List<String> featured = [
    'assets/images/furniture/pexels-eric-montanah-1350789.jpg',
    'assets/images/furniture/pexels-patryk-kamenczak-775219.jpg',
    'assets/images/furniture/pexels-pixabay-276534.jpg',
    'assets/images/furniture/pexels-steve-johnson-923192.jpg',
  ];
  static List<dynamic> menuItems = [
    {
      'icon': 'assets/icons/home.svg',
      'label': 'Home',
    },
    {
      'icon': 'assets/icons/box.svg',
      'label': 'Delivery',
    },
    {
      'icon': 'assets/icons/chat.svg',
      'label': 'Messages',
    },
    {
      'icon': 'assets/icons/wallet.svg',
      'label': 'Wallet',
    },
    {
      'icon': 'assets/icons/profile.svg',
      'label': 'Profile',
    },
  ];
}
