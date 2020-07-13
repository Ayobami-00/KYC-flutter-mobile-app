import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:kyc_app/injection.dart';
import 'package:device_preview/device_preview.dart';
import 'package:kyc_app/ui/main_widget.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(DevicePreview(
    builder: (_) => MainWidget(),
    enabled: !kReleaseMode,
  ));
}
