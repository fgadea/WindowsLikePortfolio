import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fgadea.dev/features/home/presentation/pages/home_page_big.dart';
import 'package:fgadea.dev/features/home/presentation/widgets/bottom_menu.dart';
import 'package:fgadea.dev/widgets/fgadea_colors.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
// ignore: unused_import
import '' if (dart.library.html) 'dart:html';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  String version = "";
  String buildNumber = "";
  int totalVisitors = 0;

  _HomePage() {
    PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
      setState(() {
        version = packageInfo.version;
        buildNumber = packageInfo.buildNumber;
      });
    });

    addVisitor();
  }

  void addVisitor() async {
    final db = FirebaseFirestore.instance;
    final mainCollection = db.collection('main');
    final visitorsDocument = mainCollection.doc('visitors');
    final visitors = await visitorsDocument.get();
    final data = visitors.data() as Map<String, dynamic>;
    int totalVisitors = data['count'] ?? 0;
    totalVisitors += 1;
    visitorsDocument.snapshots().listen((event) {
      final data = event.data() as Map<String, dynamic>;
      setState(() {
        this.totalVisitors = data['count'] ?? 0;
      });
    });
    await visitorsDocument.update({'count': totalVisitors});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomePageBig(),
      bottomSheet: const BottomMenu(),
      bottomNavigationBar: Container(
        color: FgadeaColors.desktopColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Visitors $totalVisitors"),
                  Text("Version $version.$buildNumber")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
