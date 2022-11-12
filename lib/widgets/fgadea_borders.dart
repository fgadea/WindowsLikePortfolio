import 'package:flutter/material.dart';

import 'fgadea_colors.dart';

class FgadeaBorders {
  static const Border windows95border = Border(
    left: BorderSide(width: 2, color: FgadeaColors.whiteBorderColor),
    top: BorderSide(width: 2, color: FgadeaColors.whiteBorderColor),
  );
  static const Border windows95borderButton = Border(
    left: BorderSide(width: 2, color: FgadeaColors.whiteBorderColor),
    top: BorderSide(width: 2, color: FgadeaColors.whiteBorderColor),
    bottom: BorderSide(width: 2, color: FgadeaColors.blackBorderColor),
    right: BorderSide(width: 2, color: FgadeaColors.blackBorderColor),
  );
  static const Border mainWindowBorder = Border(
    left: BorderSide(width: 2, color: FgadeaColors.shadowColor),
    top: BorderSide(width: 2, color: FgadeaColors.shadowColor),
    bottom: BorderSide(width: 2, color: Colors.black),
    right: BorderSide(width: 2, color: Colors.black),
  );
  static const Border promptBorder = Border(
    left: BorderSide(width: 2, color: FgadeaColors.shadowColor),
    top: BorderSide(width: 2, color: FgadeaColors.shadowColor),
    bottom: BorderSide(width: 2, color: FgadeaColors.shadowColor),
    right: BorderSide(width: 2, color: FgadeaColors.shadowColor),
  );
}
