import 'package:get/get.dart';

import '../modules/find/bindings/find_binding.dart';
import '../modules/find/views/find_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/my/bindings/my_binding.dart';
import '../modules/my/views/my_view.dart';
import '../modules/schedule/bindings/schedule_binding.dart';
import '../modules/schedule/views/schedule_view.dart';
import '../modules/signin/bindings/signin_binding.dart';
import '../modules/signin/views/signin_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/study/bindings/study_binding.dart';
import '../modules/study/views/study_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN,
      page: () => const SigninView(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: _Paths.STUDY,
      page: () => const StudyView(),
      binding: StudyBinding(),
    ),
    GetPage(
      name: _Paths.SCHEDULE,
      page: () => const ScheduleView(),
      binding: ScheduleBinding(),
    ),
    GetPage(
      name: _Paths.FIND,
      page: () => const FindView(),
      binding: FindBinding(),
    ),
    GetPage(
      name: _Paths.MY,
      page: () => const MyView(),
      binding: MyBinding(),
    ),
  ];
}
