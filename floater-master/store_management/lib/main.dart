import 'package:floater/floater.dart';
import 'package:flutter/material.dart';

import 'pages/routes.dart';
import 'store_app.dart';

void main() {
  WidgetsFlutterBinding
      .ensureInitialized(); // is required before using any plugins if the code is executed before runApp,

  ServiceManager.instance.bootstrap();

  Routes.initializeNavigation();

  runApp(StoreApp());
}
