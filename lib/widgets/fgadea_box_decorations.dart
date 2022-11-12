import 'package:flutter/material.dart';

import 'fgadea_borders.dart';
import 'fgadea_colors.dart';

class FgadeaBoxDecorations {
  static const BoxDecoration buttonDecoration = BoxDecoration(
    color: FgadeaColors.windowColor,
    border: FgadeaBorders.windows95borderButton,
  );
  static const BoxDecoration windowDecoration = BoxDecoration(
    color: FgadeaColors.windowColor,
    border: FgadeaBorders.windows95border,
  );
  static const BoxDecoration mainWindowDecoration = BoxDecoration(
    border: FgadeaBorders.mainWindowBorder,
  );
  static const BoxDecoration promptDecoration = BoxDecoration(
    color: Colors.black,
    border: FgadeaBorders.promptBorder,
  );
}
