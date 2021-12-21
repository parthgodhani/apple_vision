
import 'dart:async';

import 'package:flutter/services.dart';

class AppleVision {
  static const MethodChannel _channel = MethodChannel('apple_vision');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
