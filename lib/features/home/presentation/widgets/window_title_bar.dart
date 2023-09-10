import 'package:fgadea.dev/features/home/presentation/widgets/window_buttons.dart';
import 'package:fgadea.dev/features/home/presentation/widgets/window_title.dart';
import 'package:fgadea.dev/widgets/fgadea_colors.dart';
import 'package:flutter/widgets.dart';

class WindowTitleBar extends StatelessWidget {
  const WindowTitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      color: FgadeaColors.windowColor,
      alignment: Alignment.topCenter,
      child: Container(
        color: FgadeaColors.barColor,
        child: const Padding(
          padding: EdgeInsets.all(2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              WindowTitle(title: "Command prompt - fgadea.dev"),
              WindowButtons()
            ],
          ),
        ),
      ),
    );
  }
}
