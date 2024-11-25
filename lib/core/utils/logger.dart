import 'dart:developer' as developer;
import 'package:flutter/foundation.dart';

class Log {
  // Log levels
  static const String _info = 'INFO';
  static const String _warning = 'WARNING';
  static const String _error = 'ERROR';

  // Logs a message with the "INFO" level.
  static void info(String message) {
    _log(_info, message);
  }

  // Logs a message with the "WARNING" level.
  static void warning(String message) {
    _log(_warning, message);
  }

  // Logs a message with the "ERROR" level.
  static void error(String message, {Object? error, StackTrace? stackTrace}) {
    _log(_error, message, stackTrace: stackTrace);
    if (error != null) {
      developer.log(error.toString(),
          name: _getClassName(stackTrace), level: 1000);
    }
    if (stackTrace != null) {
      developer.log(stackTrace.toString(),
          name: _getClassName(stackTrace), level: 1000);
    }
  }

  // Internal method to log a message.
  static void _log(String level, String message, {StackTrace? stackTrace}) {
    if (kDebugMode) {
      // Only logs in debug mode
      final formattedMessage =
          '[${DateTime.now().toIso8601String()}][$level] ${_getClassName(stackTrace)} $message';
      developer.log(formattedMessage);
    }
  }

  // Gets the class name of the caller using the stack trace.
  static String _getClassName([StackTrace? stackTrace]) {
    stackTrace ??= StackTrace.current;
    final frames = stackTrace.toString().split('\n');
    final frame = frames[2];
    final regex = RegExp(r'\s*at (.+?)\.(\w+)\(');
    final match = regex.firstMatch(frame);
    return match?.group(1) != null ? '[${match?.group(1)}]' : 'Unknown';
  }
}
