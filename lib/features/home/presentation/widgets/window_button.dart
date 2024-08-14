import 'package:flutter/material.dart';

import '../../../../widgets/fgadea_box_decorations.dart';

class WindowButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget? buttonIcon;
  final double width;
  final double heigth;
  final bool isSelected;
  const WindowButton(
      {super.key,
      this.onPressed,
      this.buttonIcon,
      this.width = 32,
      this.heigth = 28,
      this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        focusColor: Colors.white,
        hoverColor: Colors.black.withAlpha(40),
        splashColor: Colors.transparent,
        highlightColor: Colors.black.withAlpha(60),
        onTap: onPressed,
        child: Ink(
          width: width,
          height: heigth,
          decoration: isSelected
              ? FgadeaBoxDecorations.buttonSelectedDecoration
              : FgadeaBoxDecorations.buttonDecoration,
          child: buttonIcon,
        ),
      ),
    );
  }
}
