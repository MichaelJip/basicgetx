import 'package:basicgetx/module/home/bindings/home_binding.dart';
import 'package:basicgetx/module/home/views/home_view.dart';
import 'package:basicgetx/module/login/bindings/login_binding.dart';
import 'package:basicgetx/module/login/views/login_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
