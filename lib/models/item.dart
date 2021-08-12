class Item {
  String name, imagePath;
  int discountPercent;
  double originalPrice, rating;
  Item({
    required this.imagePath,
    required this.name,
    required this.discountPercent,
    required this.rating,
    required this.originalPrice,
  });
  double get price {
    return (originalPrice - (originalPrice * discountPercent / 100));
  }

  static String format(double price) {
    String money = price.toStringAsFixed(2);
    return '\$$money';
  }
}
