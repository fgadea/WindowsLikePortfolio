import 'package:fgadea.dev/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

class MyPowerfulFonts {
  static String earlyGameBoy = 'Early GameBoy';
  static String pressStart2P = 'PressStart2P';
  static String fipps = 'Fipps';
  static String retroComputer = 'retro_computer_personal_use';
  static String pixelRocks = 'Pixel-rocks';
  static String superstarMemesbruh03 = 'superstar_memesbruh03';
  static String modesevenFont = 'modeseven-font';
  static String flexyIbmVgaFont = 'Flexi_IBM_VGA_False';
}

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        backgroundColor: Colors.black,
        canvasColor: Colors.black,
        fontFamily: MyPowerfulFonts.flexyIbmVgaFont,
        textTheme: const TextTheme(
          displayLarge: TextStyle(color: Colors.green, fontSize: 22),
          displayMedium: TextStyle(color: Colors.green, fontSize: 22),
          displaySmall: TextStyle(color: Colors.green, fontSize: 22),
          headlineLarge: TextStyle(color: Colors.green, fontSize: 22),
          headlineMedium: TextStyle(color: Colors.green, fontSize: 22),
          headlineSmall: TextStyle(color: Colors.green, fontSize: 22),
          titleLarge: TextStyle(color: Colors.green, fontSize: 22),
          titleMedium: TextStyle(color: Colors.green, fontSize: 22),
          titleSmall: TextStyle(color: Colors.green, fontSize: 22),
          bodyLarge: TextStyle(color: Colors.green, fontSize: 22),
          bodyMedium: TextStyle(color: Colors.green, fontSize: 22),
          bodySmall: TextStyle(color: Colors.green, fontSize: 22),
          labelLarge: TextStyle(color: Colors.green, fontSize: 22),
          labelMedium: TextStyle(color: Colors.green, fontSize: 22),
          labelSmall: TextStyle(color: Colors.green, fontSize: 22),
        ),
      ),
      home: const HomePage(),
    );
  }
}
