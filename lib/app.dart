import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'generated/locales.g.dart';

class AppController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      init: AppController(),
      initState: (state) {},
      builder: (context) {
        return GetMaterialApp(
          title: 'app_name'.tr,
          initialRoute: AppPages.INITIAL,
          translationsKeys: AppTranslation.translations,
          getPages: AppPages.routes,
        );
      },
    );
  }
}
