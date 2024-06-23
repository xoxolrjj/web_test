import 'package:architecture/presentation/home/controllers/home_binding.dart';
import 'package:architecture/router/route_string.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';

import '../presentation/home/pages/home.dart';

appRoutes() => [
      /*
  GetPage(
    name: RoutePageString.auth,
    page: () => const AuthPage(),
    middlewares: [MyMiddelware()],
  ),
  */
      //   GetPage(
      //   name: RouteString.secondpage,
      //   page: () => const SecondPage(),
      //   binding: HomeBinding()
      // ),
      GetPage(
          name: RouteString.home, page: () => Home(), binding: HomeBinding()),
    ];

class MyMiddleware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    return super.onPageCalled(page);
  }
}
