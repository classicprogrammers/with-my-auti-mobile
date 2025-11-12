import 'package:get/get.dart';

class LanguageSelectionController extends GetxController {
  String selectedLanguage = "Arabic";
  String selectedLanguageImage = 'assets/images/arabic.png';

  void changeLanguage(String language, String imagePath) {
    selectedLanguage = language;
    selectedLanguageImage = imagePath;
    update();
  }
}
