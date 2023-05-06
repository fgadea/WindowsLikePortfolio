part of 'flutter_shell_bloc.dart';

@immutable
abstract class FlutterShellEvent {}

class FlutterShellCommand extends FlutterShellEvent {
  final String command;
  FlutterShellCommand(this.command);
}
