import 'package:fgadea_dev/features/flbash_terminal/presentation/page/flutter_shell.dart';
import 'package:fgadea_dev/features/home/presentation/widgets/custom_keyboard.dart';
import 'package:fgadea_dev/features/home/presentation/widgets/window_title_bar.dart';
import 'package:fgadea_dev/widgets/fgadea_box_decorations.dart';
import 'package:fgadea_dev/widgets/fgadea_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePageBig extends StatelessWidget {
  const HomePageBig({Key? key}) : super(key: key);

  final bool development = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: FgadeaColors.desktopColor,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (((defaultTargetPlatform == TargetPlatform.android ||
                          defaultTargetPlatform == TargetPlatform.iOS) &&
                      constraints.maxWidth / constraints.maxHeight < 1) ||
                  development) {
                return const MobileView();
              }
              return const DesktopView();
            },
          ),
        ),
      ),
    );
  }
}

class DesktopView extends StatelessWidget {
  const DesktopView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 800, maxHeight: 600),
      child: Container(
        decoration: FgadeaBoxDecorations.mainWindowDecoration,
        child: Container(
          decoration: FgadeaBoxDecorations.windowDecoration,
          padding: const EdgeInsets.all(4),
          child: const Column(
            children: [
              WindowTitleBar(),
              FlutterShell(),
            ],
          ),
        ),
      ),
    );
  }
}

class MobileView extends StatelessWidget {
  const MobileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800, maxHeight: 600),
            child: Container(
              decoration: FgadeaBoxDecorations.mainWindowDecoration,
              child: Container(
                decoration: FgadeaBoxDecorations.windowDecoration,
                padding: const EdgeInsets.all(4),
                child: const Column(
                  children: [
                    WindowTitleBar(),
                    FlutterShell(
                      isMobile: true,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        const CustomKeyboard()
      ],
    );
  }
}
