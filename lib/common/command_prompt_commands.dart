import 'package:fgadea.dev/models/iterpreter_model.dart';
import 'package:flutter/material.dart';

import '../models/app_directory.dart';
import 'application_filesystem.dart';

class CommandPrompt {
  static AppDirectory prevDir = getDirectory();
  static AppDirectory dir = getDirectory();
  static const String _welcomeASCII = '''
██╗  ██╗███████╗██╗     ██╗      ██████╗ 
██║  ██║██╔════╝██║     ██║     ██╔═══██╗
███████║█████╗  ██║     ██║     ██║   ██║
██╔══██║██╔══╝  ██║     ██║     ██║   ██║
██║  ██║███████╗███████╗███████╗╚██████╔╝
╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝ ╚═════╝ 


''';

  static const String _mobileWelcomeASCII = '''

█  █ ████ █    █      ██
█  █ █    █    █     █  █
████ ██   █    █     █  █
█  █ █    █    █     █  █
█  █ ████ ████ █████  ██
                        
                                                                                                                                
''';

  static const String _mobileSmallWelcomeASCII = '''                  
 _____     _ _     
|  |  |___| | |___ 
|     | -_| | | . |
|__|__|___|_|_|___|
                   
                     
''';

  static const String _mobileSuperSmallWelcomeASCII = '''                  
HELLO! 
                   
''';

  static const String _welcomeMessage = '''
I'm Felipe Gadea Llopis, @fgadea on GitHub and felipe-gadea-llopis on LinkedIn.

Welcome to my personal website, this works like regular terminal.

Type '-help' to show commands you can use
''';

  static const String _help = '''
These are the commands you can use:

  'help'
    It shows this message

  'welcome'
    It shows welcome message

  'clr', 'clear'
    It removes all from screen

  'pwd'
    It shows working directory

  'ls', 'dir' 
    It lists directories and files

  'cd'
    It changes from actual directory to other

  'open'
    It opens a compatible file
''';

  static InterpreterModel interpreter(BuildContext context, String command) {
    String text = "";
    Color? color;
    List<String> commands = command.split(' ');
    bool clear = false;
    switch (commands.first) {
      case "welcome":
        if (MediaQuery.of(context).size.width > 600) {
          text = _welcomeASCII;
        } else if (MediaQuery.of(context).size.width > 350) {
          text = _mobileWelcomeASCII;
        } else if (MediaQuery.of(context).size.width > 280) {
          text = _mobileSmallWelcomeASCII;
        } else {
          text = _mobileSuperSmallWelcomeASCII;
        }

        text += _welcomeMessage;

        break;
      case "clr":
      case "clear":
        clear = true;
        break;
      case "pwd":
        text = dir.path;
        break;
      case "ls":
      case "dir":
        text = "\nDirectory: ${dir.path}\n";
        text += "\nName\n----\n";
        for (final AppDirectory? item in dir.items ?? []) {
          text += "${item?.path.split("/").last}\n";
        }
        break;
      case "cd":
        if (commands.length == 1) {
          text =
              "$command : The term '$command' is not recognised. Verify that the command is correct and try again.";
          color = Colors.red;
          break;
        }
        if (commands[1] == "..") {
          dir = prevDir;
        } else {
          var finalDir = dir.items?.firstWhere(
            (element) => element.path.endsWith(
              commands[1],
            ),
          );
          if (finalDir == null) break;
          prevDir = dir;
          dir = finalDir;
        }
        text = "\nDirectory: ${dir.path}\n";
        text += "\nName\n----\n";
        for (final AppDirectory? item in dir.items ?? []) {
          text += "${item?.path.split("/").last}\n";
        }
        break;
      case "open":
        if (commands.length == 1) {
          text =
              "$command : The term '$command' is not recognised. Verify that the command is correct and try again.";
          color = Colors.red;

          break;
        }
        if (commands[1] == "resumen.pdf") {
          showDialog(
            context: context,
            builder: (_) => const AlertDialog(
              content: Text(
                "This is under development",
                style: TextStyle(color: Colors.black),
              ),
            ),
          );
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
