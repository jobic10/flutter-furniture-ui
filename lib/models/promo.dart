class Promo {
  String backgroundImagePath;
  String? imagePath;
  String title;
  String subtitle;
  String? tag;
  String? caption;
  bool reverseGradient;
  Promo({
    required this.backgroundImagePath,
    this.imagePath,
    required this.title,
    required this.subtitle,
    this.tag,
    this.caption,
    required this.reverseGradient,
  });
}
