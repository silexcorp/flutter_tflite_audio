import 'dart:async';

import 'package:flutter/services.dart';

class AudioProcessing {
  static const MethodChannel _channel =
      const MethodChannel('audio_processing');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<bool> get hasPermissions async {
    final bool hasPermissions = await _channel.invokeMethod('hasPermissions');
    return hasPermissions;
  }

  static Future requestPermissions() async{
    return _channel.invokeMethod('requestPermissions');
  }

  static Future startRecording() async{
    return _channel.invokeMethod('startRecording');
  }

  static Future startRecognition() async{
    return _channel.invokeMethod('startRecognition');
  }

}
