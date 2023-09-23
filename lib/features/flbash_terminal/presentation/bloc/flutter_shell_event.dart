part of 'flutter_shell_bloc.dart';

@immutable
abstract class FlutterShellEvent {}

class FlutterShellCommand extends FlutterShellEvent {
  final String command;
  FlutterShellCommand(this.command);
}

class FlutterShellKeyPresed extends FlutterShellEvent {
  final String key;
  FlutterShellKeyPresed(this.key);
}

class FlutterShellDeleteKey extends FlutterShellEvent {
  FlutterShellDeleteKey();
}

class FlutterShellIntroKey extends FlutterShellEvent {
  FlutterShellIntroKey();
}
