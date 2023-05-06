import 'package:bloc/bloc.dart';
import 'package:fgadea.dev/common/command_prompt_commands.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

part 'flutter_shell_event.dart';
part 'flutter_shell_state.dart';

class FlutterShellBloc extends Bloc<FlutterShellEvent, FlutterShellState> {
  FlutterShellBloc() : super(FlutterShellInitial()) {
    on<FlutterShellEvent>((event, emit) {
      if (event is FlutterShellCommand) {
        print(event.command);
        emit(FlutterShellInitial(
            history: state.shellData, command: event.command));
      } else {
        emit(FlutterShellInitial());
      }
    });
  }
}
