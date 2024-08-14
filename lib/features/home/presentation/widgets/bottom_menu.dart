import 'package:fgadea_dev/features/code_listing/presentation/page/code_listing_page.dart';
import 'package:fgadea_dev/features/home/presentation/widgets/window_button.dart';
import 'package:fgadea_dev/widgets/fgadea_colors.dart';
import 'package:fgadea_dev/widgets/fgadea_dialogs.dart';
import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: FgadeaColors.desktopColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 450),
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                    left: BorderSide(
                        color: FgadeaColors.whiteBorderColor, width: 2),
                    top: BorderSide(
                        color: FgadeaColors.whiteBorderColor, width: 2),
                    right: BorderSide(
                        color: FgadeaColors.blackBorderColor, width: 2),
                    bottom: BorderSide(
                        color: FgadeaColors.blackBorderColor, width: 2)),
                color: FgadeaColors.windowColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4),
                      child: SizedBox(
                        height: 40,
                        width: 40,
                        child: WindowButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CodeListingPage(),
                            ),
                          ),
                          buttonIcon: const Icon(Icons.code_sharp),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4),
                      child: SizedBox(
                        height: 40,
                        width: 40,
                        child: WindowButton(
                          onPressed: () => dialog(context),
                          buttonIcon: const Icon(Icons.insert_drive_file_sharp),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4),
                      child: SizedBox(
                        height: 40,
                        width: 40,
                        child: WindowButton(
                          onPressed: () => dialog(context),
                          buttonIcon: const Icon(Icons.newspaper_sharp),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4),
                      child: SizedBox(
                        height: 40,
                        width: 40,
                        child: WindowButton(
                          onPressed: () => dialog(context),
                          buttonIcon:
                              const Icon(Icons.center_focus_strong_sharp),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4),
                      child: SizedBox(
                        height: 40,
                        width: 40,
                        child: WindowButton(
                          onPressed: () => dialog(context),
                          buttonIcon: const Icon(Icons.videogame_asset_sharp),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4),
                      child: SizedBox(
                        height: 40,
                        width: 40,
                        child: WindowButton(
                          onPressed: () => dialog(context),
                          buttonIcon: const Icon(Icons.style_sharp),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  dialog(BuildContext context) => FgadeaDialogs.defaultDialog(
        context,
        "fgadea_dev",
        "This button does not have any functionality yet.",
        "OK",
      );
}
