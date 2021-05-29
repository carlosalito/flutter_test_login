import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

class AppNotifications {
  static void _showNotification(String message,
      {bool error = false,
      required Color backgroundColor,
      Duration? duration,
      bool autoDismiss = true}) {
    showSimpleNotification(
      Text(message),
      background: backgroundColor,
      leading: error ? Icon(Icons.info_outline) : null,
      duration: duration ?? Duration(seconds: 3),
      autoDismiss: autoDismiss,
    );
  }

  static void showToastError(String message, {Duration? duration}) {
    _showNotification(message,
        error: true, duration: duration, backgroundColor: Colors.red);
  }

  static void showToastAlert(String message, {Duration? duration}) {
    _showNotification(message,
        error: false, duration: duration, backgroundColor: Colors.amber[600]!);
  }

  static void showToastSuccess(String message, {Duration? duration}) {
    _showNotification(message,
        error: false, duration: duration, backgroundColor: Colors.teal);
  }
}
