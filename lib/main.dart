import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'login_screen.dart';
import 'register_screen.dart';
import 'homepage.dart';
import 'study_page.dart';
import 'presensi.dart';
import 'nilai.dart';
import 'Kalender.dart';

void main() {
  runApp(YukBelajarApp());
}

class YukBelajarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yuk Belajar',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/homepage': (context) => HomePage(),
        '/study': (context) => StudyPage(),
        '/nilai': (context) => GradePage(),
        '/presensi': (context) => AttendancePage(),
        '/kalender': (context) => CalendarPage(),

        // Add other screens here
      },
    );
  }
}
