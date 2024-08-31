import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:honeybee_time_mobile/routes/routes.dart';
import 'package:honeybee_time_mobile/screens/welcome/welcome.dart';

import 'global/configs/size_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "HoneyBee Time",
      theme: ThemeData(
        fontFamily: "Inter",
      ),
      initialRoute: Welcome.routeName,
      routes: routes,
    );
  }
}
