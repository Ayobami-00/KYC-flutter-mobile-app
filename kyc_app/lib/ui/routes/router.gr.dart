// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:kyc_app/ui/splash/splash_page.dart';
import 'package:kyc_app/ui/authentication/login_page.dart';
import 'package:kyc_app/ui/profile/profile_page.dart';
import 'package:kyc_app/ui/kyc_upgrade/kyc_upgrade_page.dart';

class Routes {
  static const String splashScreen = '/';
  static const String loginPage = '/login-page';
  static const String profilePage = '/profile-page';
  static const String kycUpgradePage = '/kyc-upgrade-page';
  static const all = <String>{
    splashScreen,
    loginPage,
    profilePage,
    kycUpgradePage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.loginPage, page: LoginPage),
    RouteDef(Routes.profilePage, page: ProfilePage),
    RouteDef(Routes.kycUpgradePage, page: KycUpgradePage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreen: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SplashScreen(),
        settings: data,
      );
    },
    LoginPage: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => LoginPage(),
        settings: data,
      );
    },
    ProfilePage: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ProfilePage(),
        settings: data,
      );
    },
    KycUpgradePage: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => KycUpgradePage(),
        settings: data,
      );
    },
  };
}

// *************************************************************************
// Navigation helper methods extension
// **************************************************************************

extension RouterNavigationHelperMethods on ExtendedNavigatorState {
  Future<dynamic> pushSplashScreen() => pushNamed<dynamic>(Routes.splashScreen);

  Future<dynamic> pushLoginPage() => pushNamed<dynamic>(Routes.loginPage);

  Future<dynamic> pushProfilePage() => pushNamed<dynamic>(Routes.profilePage);

  Future<dynamic> pushKycUpgradePage() =>
      pushNamed<dynamic>(Routes.kycUpgradePage);
}
