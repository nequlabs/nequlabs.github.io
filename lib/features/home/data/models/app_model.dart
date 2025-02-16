class AppModel {
  final String name;
  final String imagePath;
  final String description;
  final String? appStoreUrl;
  final String? playStoreUrl;

  const AppModel({
    required this.name,
    required this.imagePath,
    required this.description,
    this.appStoreUrl,
    this.playStoreUrl,
  });
}
