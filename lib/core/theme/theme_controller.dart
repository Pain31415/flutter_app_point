import 'package:flutter_app_point/core/theme/theme.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  final RxBool isDark = Get.isDarkMode.obs;


  void changeTheme() {
    var themeMode = isDark.value ? AppTheme.light : AppTheme.dark;
    Get.changeTheme(themeMode);
    isDark.value = !isDark.value;
    update();
  }
}
