import 'dart:developer';
import 'dart:io';
import 'package:logger/src/logger.dart';
import 'package:logger/src/log_output.dart';
import 'package:universal_platform/universal_platform.dart';

/// Default implementation of [LogOutput].
///
/// It sends everything to the system console.
class ConsoleOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    if (UniversalPlatform.isIOS) {
      final StringBuffer buffer = StringBuffer();
      event.lines.forEach(buffer.writeln);
      log(buffer.toString());
    } else {
      event.lines.forEach(print);
    }
  }
}
