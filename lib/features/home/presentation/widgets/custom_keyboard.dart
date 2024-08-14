import 'package:fgadea_dev/features/home/presentation/widgets/keyboard_button.dart';
import 'package:fgadea_dev/widgets/fgadea_box_decorations.dart';
import 'package:fgadea_dev/widgets/fgadea_styles.dart';
import 'package:flutter/material.dart';

class CustomKeyboard extends StatelessWidget {
  const CustomKeyboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: FgadeaBoxDecorations.mainWindowDecoration,
      child: Container(
        decoration: FgadeaBoxDecorations.windowDecoration,
        child: const Padding(
          padding: EdgeInsets.all(4.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  KeyboardButton(
                    keyValue: "1",
                    buttonIcon:
                        Center(child: Text("1", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "2",
                    buttonIcon:
                        Center(child: Text("2", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "3",
                    buttonIcon:
                        Center(child: Text("3", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "4",
                    buttonIcon:
                        Center(child: Text("4", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "5",
                    buttonIcon:
                        Center(child: Text("5", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "6",
                    buttonIcon:
                        Center(child: Text("6", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "7",
                    buttonIcon:
                        Center(child: Text("7", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "8",
                    buttonIcon:
                        Center(child: Text("8", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "9",
                    buttonIcon:
                        Center(child: Text("9", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "0",
                    buttonIcon:
                        Center(child: Text("0", style: FgadeaStyles.keyStyle)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  KeyboardButton(
                    keyValue: "q",
                    buttonIcon:
                        Center(child: Text("q", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "w",
                    buttonIcon:
                        Center(child: Text("w", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "e",
                    buttonIcon:
                        Center(child: Text("e", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "r",
                    buttonIcon:
                        Center(child: Text("r", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "t",
                    buttonIcon:
                        Center(child: Text("t", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "y",
                    buttonIcon:
                        Center(child: Text("y", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "u",
                    buttonIcon:
                        Center(child: Text("u", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "i",
                    buttonIcon:
                        Center(child: Text("i", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "o",
                    buttonIcon:
                        Center(child: Text("o", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "p",
                    buttonIcon:
                        Center(child: Text("p", style: FgadeaStyles.keyStyle)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  KeyboardButton(
                    keyValue: "a",
                    buttonIcon:
                        Center(child: Text("a", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "s",
                    buttonIcon:
                        Center(child: Text("s", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "d",
                    buttonIcon:
                        Center(child: Text("d", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "f",
                    buttonIcon:
                        Center(child: Text("f", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "g",
                    buttonIcon:
                        Center(child: Text("g", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "h",
                    buttonIcon:
                        Center(child: Text("h", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "j",
                    buttonIcon:
                        Center(child: Text("j", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "k",
                    buttonIcon:
                        Center(child: Text("k", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "l",
                    buttonIcon:
                        Center(child: Text("l", style: FgadeaStyles.keyStyle)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  KeyboardButton(
                      mayusKey: true,
                      width: 50,
                      buttonIcon: Icon(Icons.file_upload)),
                  KeyboardButton(
                    keyValue: "z",
                    buttonIcon:
                        Center(child: Text("z", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "x",
                    buttonIcon:
                        Center(child: Text("x", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "c",
                    buttonIcon:
                        Center(child: Text("c", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "v",
                    buttonIcon:
                        Center(child: Text("v", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "b",
                    buttonIcon:
                        Center(child: Text("b", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "n",
                    buttonIcon:
                        Center(child: Text("n", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    keyValue: "m",
                    buttonIcon:
                        Center(child: Text("m", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                      deleteKey: true,
                      width: 50,
                      buttonIcon: Icon(Icons.backspace, size: 18))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  KeyboardButton(
                    width: 32 * 2,
                    keyValue: "/",
                    buttonIcon:
                        Center(child: Text("/", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                    width: 32 * 7,
                    keyValue: " ",
                    buttonIcon:
                        Center(child: Text(" ", style: FgadeaStyles.keyStyle)),
                  ),
                  KeyboardButton(
                      width: 32 * 2,
                      introKey: true,
                      buttonIcon: Icon(Icons.keyboard_return_sharp)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
