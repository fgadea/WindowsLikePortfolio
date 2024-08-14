import 'package:fgadea_dev/features/home/presentation/widgets/window_button.dart';
import 'package:fgadea_dev/features/home/presentation/widgets/window_title.dart';
import 'package:fgadea_dev/widgets/fgadea_box_decorations.dart';
import 'package:fgadea_dev/widgets/fgadea_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_highlight/themes/tomorrow-night-eighties.dart';
import 'package:markdown_widget/markdown_widget.dart';

class CodeListingPage extends StatefulWidget {
  const CodeListingPage({super.key});

  @override
  createState() => _CodeListingPage();
}

class _CodeListingPage extends State<CodeListingPage> {
  String? mdContent = "";

  @override
  void initState() {
    super.initState();
    readFileAsync();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FgadeaColors.desktopColor,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 800, maxHeight: 600),
              child: Container(
                decoration: FgadeaBoxDecorations.mainWindowDecoration,
                child: Container(
                  decoration: FgadeaBoxDecorations.windowDecoration,
                  padding: const EdgeInsets.all(4),
                  child: Container(
                    color: FgadeaColors.blackBorderColor,
                    child: Column(
                      children: [
                        Container(
                          height: 38,
                          color: FgadeaColors.windowColor,
                          alignment: Alignment.topCenter,
                          child: Container(
                            color: FgadeaColors.barColor,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const WindowTitle(
                                      title: "Code window - fgadea_dev"),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 1, horizontal: 2),
                                    child: WindowButton(
                                      onPressed: () => Navigator.pop(context),
                                      buttonIcon: const Icon(Icons.close),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: MarkdownWidget(
                              data: mdContent ?? "",
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              config: MarkdownConfig(configs: [
                                PreConfig(
                                  theme: tomorrowNightEightiesTheme,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade900,
                                  ),
                                  styleNotMatched:
                                      TextStyle(color: Colors.grey.shade600),
                                  language: 'dart',
                                )
                              ])),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void readFileAsync() async {
    final String mdContent = await rootBundle.loadString('md/sample.md');
    setState(() {
      this.mdContent = mdContent;
    });
  }
}
