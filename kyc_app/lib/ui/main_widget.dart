import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kyc_app/bloc/authentication/auth_bloc.dart';
import 'package:kyc_app/injection.dart';
import 'package:kyc_app/ui/routes/router.gr.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

class MainWidget extends StatefulWidget {
  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  final FirebaseMessaging _fcm = FirebaseMessaging();
  @override
  void initState() {
    super.initState();
    _fcm.configure(
      onMessage: (Map<String, dynamic> message) async {
        print("onMessage: $message");
        print("Twooo");
        showOverlayNotification((context) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            child: SafeArea(
              child: ListTile(
                title: Text('${message['notification']['title']}'),
                subtitle: Text('${message['notification']['body']}'),
                trailing: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      OverlaySupportEntry.of(context).dismiss();
                    }),
              ),
            ),
          );
        }, duration: Duration(hours: 1));
      },
      onLaunch: (Map<String, dynamic> message) async {
        print("onLaunch: $message");
      },
      onResume: (Map<String, dynamic> message) async {
        print("onResume: $message");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return OverlaySupport(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                getIt<AuthBloc>()..add(const AuthEvent.checkUserState()),
          )
        ],
        child: MaterialApp(
          title: 'Kyc_App',
          debugShowCheckedModeBanner: false,
          builder: ExtendedNavigator(router: Router()),
          theme: ThemeData.light().copyWith(
            inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
