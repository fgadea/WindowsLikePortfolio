import 'package:fgadea_dev/features/home/presentation/widgets/window_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WindowButtons extends StatelessWidget {
  final EdgeInsets buttonPadding =
      const EdgeInsets.symmetric(vertical: 1, horizontal: 2);

  const WindowButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: buttonPadding,
          child: const WindowButton(
            buttonIcon: Icon(Icons.square_outlined),
          ),
        ),
        Padding(
          padding: buttonPadding,
          child: const WindowButton(
            buttonIcon: Icon(Icons.minimize),
          ),
        ),
        Padding(
          padding: buttonPadding,
          child: const WindowButton(
            buttonIcon: Icon(Icons.close),
          ),
        )
      ],
    );
  }
}
