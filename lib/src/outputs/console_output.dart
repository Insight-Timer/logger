import 'dart:developer';
import 'dart:io';
import 'package:logger/src/logger.dart';
import 'package:logger/src/log_output.dart';

/// Default implementation of [LogOutput].
///
/// It sends everything to the system console.
class ConsoleOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    if (Platform.isIOS) {
      event.lines.forEach(log);
    } else {
      event.lines.forEach(print);
    }
  }
}
