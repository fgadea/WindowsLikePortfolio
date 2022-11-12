import 'dart:async';

import 'package:fgadea_dev/widgets/fgadea_box_decorations.dart';
import 'package:flutter/cupertino.dart';

class WindowContent extends StatefulWidget {
  const WindowContent({super.key});

  @override
  State<WindowContent> createState() => _WindowContentState();
}

class _WindowContentState extends State<WindowContent> {
  late Duration duration;
  bool isVisible = false;
  void initState() {
    // TODO: implement initState
    super.initState();
    duration = const Duration(milliseconds: 300);

    Timer.periodic(duration, reverseCursor);
  }

  void reverseCursor(Timer t) {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        decoration: FgadeaBoxDecorations.promptDecoration,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          itemCount: 1,
          itemBuilder: ((context, index) => Row(
                children: [
                  const Text(
                    "fgadea.dev >",
                  ),
                  isVisible
                      ? const Text(
                          "_",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      : const SizedBox.shrink(),
                ],
              )),
        ),
      ),
    );
  }
}
