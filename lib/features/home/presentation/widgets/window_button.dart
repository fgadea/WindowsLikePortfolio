import 'package:flutter/material.dart';

import '../../../../widgets/fgadea_box_decorations.dart';

class WindowButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget? buttonIcon;
  const WindowButton({super.key, this.onPressed, this.buttonIcon});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        focusColor: Colors.white,
        hoverColor: Colors.black.withAlpha(40),
        splashColor: Colors.transparent,
        highlightColor: Colors.black.withAlpha(60),
        onTap: () {},
        child: Ink(
          width: 32,
          height: 28,
          decoration: FgadeaBoxDecorations.buttonDecoration,
          child: buttonIcon,
        ),
      ),
    );
  }
}
