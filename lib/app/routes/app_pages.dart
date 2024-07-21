import 'package:get/get.dart';

import '../modules/addlist/bindings/addlist_binding.dart';
import '../modules/addlist/views/addlist_view.dart';
import '../modules/editlist/bindings/editlist_binding.dart';
import '../modules/editlist/views/editlist_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/listdetail/bindings/listdetail_binding.dart';
import '../modules/listdetail/views/listdetail_view.dart';
import '../modules/signin/bindings/signin_binding.dart';
import '../modules/signin/views/signin_view.dart';

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
      name: _Paths.SIGNIN,
      page: () => const SigninView(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: _Paths.ADDLIST,
      page: () => const AddlistView(),
      binding: AddlistBinding(),
    ),
    GetPage(
      name: _Paths.EDITLIST,
      page: () => const EditlistView(),
      binding: EditlistBinding(),
    ),
    GetPage(
      name: _Paths.LISTDETAIL,
      page: () => const ListdetailView(),
      binding: ListdetailBinding(),
    ),
  ];
}
