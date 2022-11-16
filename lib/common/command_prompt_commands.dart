import 'package:flutter/material.dart';

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

  static Text interpreter(String command) {
    String text = "";
    Color? color;
    switch (command) {
      case "welcome":
        text = _welcome;
        break;
      case "dir":
        text = "You wrote a command for listing directories";
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

    return Text(
      text,
      style: TextStyle(color: color ?? Colors.white),
    );
  }
}
