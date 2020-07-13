import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:kyc_app/injection.dart';
import 'package:device_preview/device_preview.dart';
import 'package:kyc_app/ui/main_widget.dart';

//BACKGROUND MESSAGE HANDLER
Future<dynamic> myBackgroundMessageHandler(Map<String, dynamic> message) async {
  if (message.containsKey('data')) {
    if (message.containsKey('notification')) {
      // Handle notification message
      // final dynamic notification = message['notification'];
      // print(notification);
    }
  }
}

void main() {
  configureInjection(Environment.prod);
  runApp(DevicePreview(
    builder: (_) => MainWidget(),
    enabled: !kReleaseMode,
  ));
}
