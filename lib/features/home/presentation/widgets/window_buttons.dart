import 'package:fgadea.dev/widgets/fgadea_dialogs.dart';
import 'package:fgadea.dev/features/home/presentation/widgets/window_button.dart';
import 'package:flutter/material.dart';

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
          child: WindowButton(
              buttonIcon: const Icon(Icons.square_outlined),
              onPressed: () => dialog(context)),
        ),
        Padding(
          padding: buttonPadding,
          child: WindowButton(
              buttonIcon: const Icon(Icons.minimize),
              onPressed: () => dialog(context)),
        ),
        Padding(
          padding: buttonPadding,
          child: WindowButton(
              buttonIcon: const Icon(Icons.close),
              onPressed: () => dialog(context)),
        )
      ],
    );
  }

  dialog(BuildContext context) => FgadeaDialogs.defaultDialog(
        context,
        "fgadea.dev",
        "This button does not have any functionality yet.",
        "OK",
      );
}
