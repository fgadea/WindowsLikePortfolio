import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mobile Developer",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
                    ),
                    Text(
                        "Senior Software Engineer focused onn mobile development with iOS, Flutter and KMM"),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: 2,
                    height: 300,
                    color: Colors.yellow,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const Column(
                          children: [
                            Text(
                              "Felipe",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Gadea",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Llopis",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Container(
                          color: Colors.red,
                          width: 200,
                          height: 200,
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}
