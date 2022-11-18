import 'dart:async';

import 'package:fgadea.dev/common/command_prompt_commands.dart';
import 'package:fgadea.dev/widgets/fgadea_box_decorations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WindowContent extends StatefulWidget {
  const WindowContent({super.key});

  @override
  State<WindowContent> createState() => _WindowContentState();
}

class _WindowContentState extends State<WindowContent> {
  late Duration duration;
  late Timer timer;
  late FocusNode textInputFocusNode;
  final ScrollController promptScrollController = ScrollController();
  String promptInput = "_";
  String userInput = "";
  String userName = "fgadea.dev>";
  List<Text> lines = [];
  bool isVisible = false;
  @override
  void initState() {
    super.initState();
    textInputFocusNode = FocusNode();

    duration = const Duration(milliseconds: 300);

    timer = Timer.periodic(duration, reverseCursor);
    Future.delayed(const Duration(seconds: 1)).then((value) async {
      setState(() {
        final res = CommandPrompt.interpreter("welcome");
        if (res.clear) {
          lines.clear();
        } else {
          lines.add(res.text);
        }
        promptInput = "$userName${userInput}_";
      });
    });
  }

  void reverseCursor(Timer t) {
    setState(() {
      if (!textInputFocusNode.hasFocus) {
        textInputFocusNode.requestFocus();
      }
      if (promptInput.isNotEmpty && promptInput.characters.last == "_") {
        promptInput = promptInput.substring(0, promptInput.length - 1);
      } else {
        promptInput += "_";
      }
    });
  }

  @override
  void dispose() {
    timer.cancel();
    promptScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
        onTap: () => textInputFocusNode.requestFocus(),
        child: userInputWidget(
          child: Container(
            width: double.infinity,
            decoration: FgadeaBoxDecorations.promptDecoration,
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
              controller: promptScrollController,
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: lines.length,
                  itemBuilder: ((context, index) {
                    return lines[index];
                  }),
                ),
                Text(promptInput)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget userInputWidget({required Widget child}) {
    return RawKeyboardListener(
      autofocus: true,
      onKey: (value) {
        if (value.isKeyPressed(LogicalKeyboardKey.enter) &&
            userInput.isNotEmpty) {
          lines.add(Text(
            "$userName$userInput",
            textAlign: TextAlign.left,
          ));
          final res = CommandPrompt.interpreter(userInput);
          if (res.clear) {
            lines.clear();
          } else {
            lines.add(res.text);
          }
          userInput = "";
        } else if (value.isKeyPressed(LogicalKeyboardKey.backspace) &&
            userInput.isNotEmpty) {
          userInput = userInput.substring(0, userInput.length - 1);
        } else {
          userInput += value.character ?? "";
        }

        setState(() {
          promptInput = "$userName${userInput}_";
        });
        promptScrollController.animateTo(
            promptScrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 100),
            curve: Curves.linear);
      },
      focusNode: textInputFocusNode,
      child: child,
    );
  }
}
