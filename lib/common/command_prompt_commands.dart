import 'package:fgadea.dev/models/iterpreter_model.dart';
import 'package:flutter/material.dart';

import 'application_filesystem.dart';

class CommandPrompt {
  static const String _welcome = '''
██╗  ██╗███████╗██╗     ██╗      ██████╗ 
██║  ██║██╔════╝██║     ██║     ██╔═══██╗
███████║█████╗  ██║     ██║     ██║   ██║
██╔══██║██╔══╝  ██║     ██║     ██║   ██║
██║  ██║███████╗███████╗███████╗╚██████╔╝
╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝ ╚═════╝ 
                                                                         
I'm Felipe Gadea, welcome to my personal website, this works like regular terminal.

Type '-help' to show commands you can use
''';

  static const String _help = "This is help";

  static InterpreterModel interpreter(String command) {
    String text = "";
    Color? color;
    List<String> commands = command.split(' ');
    bool clear = false;
    switch (commands.first) {
      case "welcome":
        text = _welcome;
        break;
      case "clr":
      case "clear":
        clear = true;
        break;
      case "pwd":
        var dir = getDirectory();
        text = dir.path;
        break;
      case "ls":
      case "dir":
        var dir = getDirectory();
        text = "\nDirectory: ${dir.path}\n";
        text += "\nName\n----\n";
        for (final item in dir.items) {
          text += "$item\n";
        }
        break;
      case "help":
      case "h":
      case "-h":
      case "-help":
        text = _help;
        break;
      default:
        text =
            "$command : The term '$command' is not recognised. Verify that the command is correct and try again.";
        color = Colors.red;
    }

    final textW = Text(
      text,
      style: TextStyle(color: color ?? Colors.white),
    );
    return InterpreterModel(text: textW, clear: clear);
  }
}
