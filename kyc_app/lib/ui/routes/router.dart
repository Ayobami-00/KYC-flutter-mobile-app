import 'package:auto_route/auto_route_annotations.dart';
import 'package:kyc_app/ui/splash/splash_page.dart';

@MaterialAutoRouter(
    generateNavigationHelperExtension: true,
    routes: <AutoRoute>[
      AdaptiveRoute(page: SplashScreen, initial: true),
    ])
    
class $Router {}
