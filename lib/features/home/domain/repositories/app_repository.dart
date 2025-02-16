import 'package:nequ_web/features/home/data/models/app_model.dart';

class AppRepository {
  List<AppModel> getApps() {
    return [
      const AppModel(
        name: 'App Name 1',
        imagePath: 'assets/images/app1.png',
        description: 'AI-powered mobile application',
      ),
      const AppModel(
        name: 'App Name 2',
        imagePath: 'assets/images/app2.png',
        description: 'Smart solution for your needs',
      ),
    ];
  }
}
