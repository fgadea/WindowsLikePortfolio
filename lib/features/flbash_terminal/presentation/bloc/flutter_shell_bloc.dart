import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

part 'flutter_shell_event.dart';
part 'flutter_shell_state.dart';

class FlutterShellBloc extends Bloc<FlutterShellEvent, FlutterShellState> {
  FlutterShellBloc() : super(FlutterShellInitial()) {
    on<FlutterShellEvent>((event, emit) {
      if (event is FlutterShellCommand) {
        emit(FlutterShellInitial(
            history: state.shellData, command: event.command));
      } else if (event is FlutterShellKeyPresed) {
        state.inputFieldController.text += event.key;
      } else if (event is FlutterShellDeleteKey) {
        state.inputFieldController.text = state.inputFieldController.text
            .substring(0, state.inputFieldController.text.length - 1);
      } else if (event is FlutterShellIntroKey) {
        emit(FlutterShellInitial(
            history: state.shellData,
            command: state.inputFieldController.text));
      } else {
        emit(FlutterShellInitial());
      }
    });
  }
}
