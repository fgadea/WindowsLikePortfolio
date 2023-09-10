import 'package:fgadea.dev/features/home/presentation/widgets/custom_text_button.dart';
import 'package:fgadea.dev/features/home/presentation/widgets/dialog_title_bar.dart';
import 'package:fgadea.dev/widgets/fgadea_box_decorations.dart';
import 'package:flutter/material.dart';

class FgadeaDialogs {
  static defaultDialog(
    BuildContext context,
    String title,
    String text,
    String buttonTitle,
  ) {
    showDialog(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return Center(
          child: Container(
            constraints: BoxConstraints(
                minWidth: 200,
                maxWidth: MediaQuery.of(context).size.width * 0.8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: FgadeaBoxDecorations.mainWindowDecoration,
                  child: Container(
                    decoration: FgadeaBoxDecorations.windowDecoration,
                    padding: const EdgeInsets.all(4),
                    child: Column(
                      children: [
                        DialogTitleBar(
                          title: title,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 12.0, right: 12.0, top: 12, bottom: 4),
                          child: Text(
                            text,
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomTextButton(
                            title: buttonTitle,
                            minWidth: 100,
                            onPressed: () => Navigator.pop(context),
                          ),
                        )
                        //WindowContent(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
