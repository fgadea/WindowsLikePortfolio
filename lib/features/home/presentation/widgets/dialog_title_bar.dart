import 'package:fgadea_dev/features/home/presentation/widgets/window_title.dart';
import 'package:fgadea_dev/widgets/fgadea_colors.dart';
import 'package:flutter/widgets.dart';

class DialogTitleBar extends StatelessWidget {
  final String? title;
  const DialogTitleBar({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      color: FgadeaColors.windowColor,
      alignment: Alignment.topCenter,
      child: Container(
        color: FgadeaColors.barColor,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              WindowTitle(title: title),
            ],
          ),
        ),
      ),
    );
  }
}
