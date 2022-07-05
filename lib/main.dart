import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_storage/get_storage.dart';

import 'app.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Future.delayed(Duration(seconds: 3))
      .then((value) => FlutterNativeSplash.remove());

  await GetStorage.init();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: App(),
  ));
}
