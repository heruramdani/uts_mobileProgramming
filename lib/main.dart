import 'package:flutter/material.dart';
import 'package:uts_flutter/ui/pages/home_page.dart';
import 'package:uts_flutter/ui/pages/login_page.dart';
import 'package:uts_flutter/ui/pages/profile_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => LoginPage(),
        '/Home-page': (context) => HomePage(),
        '/Profile-page': (context) => ProfilePage(),
      },
    );
  }
}
