import 'package:auto_route/auto_route_annotations.dart';
import 'package:kyc_app/ui/authentication/login_page.dart';
import 'package:kyc_app/ui/kyc_upgrade/kyc_upgrade_page.dart';
import 'package:kyc_app/ui/kyc_upgrade/kyc_upgrade_bloc_page.dart';
import 'package:kyc_app/ui/splash/splash_page.dart';
import 'package:kyc_app/ui/profile/profile_page.dart';

@MaterialAutoRouter(
    generateNavigationHelperExtension: true,
    routes: <AutoRoute>[
      AdaptiveRoute(page: SplashScreen, initial: true),
      AdaptiveRoute(page: LoginPage),
      AdaptiveRoute(page: ProfilePage),
      AdaptiveRoute(page: KycUpgradePage),
      AdaptiveRoute(page: KycUpgradeBlocPage),
    ])
    
class $Router {}