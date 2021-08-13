import 'package:furniture_ui/models/category.dart';
import 'package:furniture_ui/models/item.dart';
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
  static List<Item> furnitures = [
    Item(
      name: 'Chair Dacey li - Black',
      discountPercent: 30,
      imagePath: 'assets/images/furniture/items/dacey.png',
      rating: 4.5,
      originalPrice: 80,
    ),
    Item(
      name: 'Elly Sofa Patchwork',
      discountPercent: 62,
      imagePath: 'assets/images/furniture/items/elly.png',
      rating: 4.2,
      originalPrice: 889,
    ),
    Item(
      name: 'Dobson Table - White',
      discountPercent: 23,
      imagePath: 'assets/images/furniture/items/table 2.png',
      rating: 3.7,
      originalPrice: 140,
    ),
    Item(
      name: 'Nagano Table - Brown',
      discountPercent: 10,
      imagePath: 'assets/images/furniture/items/ezgif.con-crop.png',
      rating: 4.8,
      originalPrice: 800,
    ),
    Item(
      name: 'Chair Dacey li - Black',
      discountPercent: 7,
      imagePath: 'assets/images/furniture/items/CHair 2.png',
      rating: 4.0,
      originalPrice: 35,
    ),
    Item(
      name: 'Chair Dacey li - Feather Grey',
      discountPercent: 17,
      imagePath: 'assets/images/furniture/items/chair3.png',
      rating: 4.9,
      originalPrice: 720,
    ),
  ];
}
