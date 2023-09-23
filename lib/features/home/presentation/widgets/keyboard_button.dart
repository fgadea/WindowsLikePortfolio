import 'package:fgadea.dev/features/flbash_terminal/presentation/bloc/flutter_shell_bloc.dart';
import 'package:fgadea.dev/features/home/presentation/widgets/window_button.dart';
import 'package:fgadea.dev/widgets/fgadea_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class KeyboardButton extends StatefulWidget {
  final bool introKey;
  final bool mayusKey;
  final bool deleteKey;
  final String keyValue;
  final Widget? buttonIcon;
  final double? width;
  final double? heigth;
  const KeyboardButton({
    super.key,
    this.buttonIcon,
    this.width,
    this.heigth,
    this.keyValue = "",
    this.introKey = false,
    this.mayusKey = false,
    this.deleteKey = false,
  });

  @override
  State<KeyboardButton> createState() => _KeyboardButtonState();
}

class _KeyboardButtonState extends State<KeyboardButton> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<FlutterShellBloc>(context),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: widget.width != null || widget.heigth != null
            ? WindowButton(
                onPressed: () => buttonPressed(context),
                buttonIcon: widget.buttonIcon,
                isSelected: widget.mayusKey && FgadeaConstants.keyMayus,
                width: widget.width ?? 32,
                heigth: widget.heigth ?? 28,
              )
            : WindowButton(
                onPressed: () => buttonPressed(context),
                buttonIcon: widget.buttonIcon,
              ),
      ),
    );
  }

  buttonPressed(BuildContext context) {
    if (widget.introKey) {
      BlocProvider.of<FlutterShellBloc>(context).add(FlutterShellIntroKey());
    } else if (FgadeaConstants.keyMayus && !widget.mayusKey) {
      BlocProvider.of<FlutterShellBloc>(context)
          .add(FlutterShellKeyPresed(widget.keyValue.toUpperCase()));
    } else if (widget.mayusKey) {
      FgadeaConstants.keyMayus = !FgadeaConstants.keyMayus;
      setState(() {});
    } else if (widget.deleteKey) {
      BlocProvider.of<FlutterShellBloc>(context).add(FlutterShellDeleteKey());
    } else {
      BlocProvider.of<FlutterShellBloc>(context)
          .add(FlutterShellKeyPresed(widget.keyValue));
    }
  }
}
