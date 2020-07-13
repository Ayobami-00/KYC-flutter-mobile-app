import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kyc_app/bloc/authentication/auth_bloc.dart';
import 'package:kyc_app/ui/routes/router.gr.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            print('I am authenticated!');
            ExtendedNavigator.of(context)
              .pushReplacementNamed(Routes.profilePage);
          },
          unauthenticated: (_) => ExtendedNavigator.of(context)
              .pushReplacementNamed(Routes.loginPage),
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}