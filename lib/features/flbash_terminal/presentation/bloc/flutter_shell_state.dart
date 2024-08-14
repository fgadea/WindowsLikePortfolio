part of 'flutter_shell_bloc.dart';

@immutable
abstract class FlutterShellState {
  final TextEditingController inputFieldController =
      TextEditingController(text: "fgadea_dev:/> ");
  final ScrollController listController = ScrollController();
  final FocusNode focusNode = FocusNode();
  final List<String> shellData = [
    'welcome',
  ];
}

class FlutterShellInitial extends FlutterShellState {
  FlutterShellInitial({List<String>? history, String? command}) {
    if (command != null) {
      history?.removeAt(0);
      shellData.addAll(history ?? []);
      shellData.add(command.replaceAll('fgadea_dev:/> ', ''));
    }
  }
}
