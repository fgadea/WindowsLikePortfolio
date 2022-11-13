import 'dart:async';
import 'dart:html';

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
  String promptInput = "";
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
    promptInput = "$userName${userInput}_";
  }

  void reverseCursor(Timer t) {
    setState(() {
      if (!textInputFocusNode.hasFocus) {
        textInputFocusNode.requestFocus();
      }
      if (promptInput.characters.last == "_") {
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

  Widget userInputWidget({required Widget child}) => RawKeyboardListener(
        autofocus: true,
        onKey: (value) {
          if (value.isKeyPressed(LogicalKeyboardKey.enter) &&
              userInput.isNotEmpty) {
            lines.add(Text(
              "$userName$userInput",
              textAlign: TextAlign.left,
            ));
            lines.add(
              commandInterpreter(userInput),
            );
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

  Text commandInterpreter(String command) {
    switch (command) {
      case "dir":
        return const Text(
          "You wrote a command for listing directories",
          style: TextStyle(color: Colors.white),
        );
      case "help":
      case "h":
      case "-h":
      case "-help":
        return const Text(
          "This is correct command for help.",
          style: TextStyle(color: Colors.white),
        );
      default:
        return Text(
          "$command : The term '$command' is not recognised. Verify that the command is correct and try again.",
          style: const TextStyle(color: Colors.red),
        );
    }
  }
}
