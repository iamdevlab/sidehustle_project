import 'package:sd_project/home_page.dart';
import 'package:sd_project/login/login_page.dart';
import 'package:sd_project/services/auth_checker.dart';
import 'package:sd_project/services/firebase_auth.dart';
import 'package:sd_project/signup/signup.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(
      page: AuthenticationChecker,
    ),
    MaterialRoute(page: LoginPage, initial: true),
    MaterialRoute(page: HomePage),
    MaterialRoute(page: SignUp),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: FireBaseAuthService),
  ],
)
class AppRouter {}
