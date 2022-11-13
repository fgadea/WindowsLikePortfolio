import 'package:fgadea.dev/features/home/presentation/widgets/window_content.dart';
import 'package:fgadea.dev/features/home/presentation/widgets/window_title_bar.dart';
import 'package:fgadea.dev/widgets/fgadea_box_decorations.dart';
import 'package:fgadea.dev/widgets/fgadea_colors.dart';
import 'package:flutter/material.dart';

class HomePageBig extends StatefulWidget {
  const HomePageBig({Key? key}) : super(key: key);

  @override
  createState() => _HomePageBigState();
}

class _HomePageBigState extends State<HomePageBig> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: FgadeaColors.desktopColor,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800, maxHeight: 600),
          child: Container(
            decoration: FgadeaBoxDecorations.mainWindowDecoration,
            child: Container(
              decoration: FgadeaBoxDecorations.windowDecoration,
              padding: const EdgeInsets.all(4),
              child: Column(
                children: const [
                  WindowTitleBar(),
                  WindowContent(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
