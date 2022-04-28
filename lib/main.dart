import 'package:ana_uk/views/web_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.blue.shade900,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Uk',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HeadlessInAppWebViewExampleScreen());
  }
}
