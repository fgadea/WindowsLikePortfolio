import 'package:fgadea_dev/widgets/fgadea_images.dart';
import 'package:flutter/material.dart';

class WindowTitle extends StatelessWidget {
  final String? title;
  const WindowTitle({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          width: 4,
        ),
        Image.asset(FgadeaImages.prompt),
        const SizedBox(
          width: 8,
        ),
        Text(
          title ?? "",
          style: const TextStyle(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
