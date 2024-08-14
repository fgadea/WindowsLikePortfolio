import 'package:flutter/material.dart';

import '../../../../widgets/fgadea_box_decorations.dart';

class CustomTextButton extends StatelessWidget {
  final Function()? onPressed;
  final String? title;
  final double? minWidth;
  const CustomTextButton(
      {super.key, this.onPressed, this.title, this.minWidth});

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
          height: 28,
          decoration: FgadeaBoxDecorations.buttonDecoration,
          child: Container(
            constraints: BoxConstraints(minWidth: minWidth ?? 0),
            child: Text(
              title ?? '',
              style: const TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
