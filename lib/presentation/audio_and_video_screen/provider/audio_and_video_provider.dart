import 'package:flutter/material.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:edurecovery/presentation/audio_and_video_screen/models/audio_and_video_model.dart';

/// A provider class for the AudioAndVideoScreen.
///
/// This provider manages the state of the AudioAndVideoScreen, including the
/// current audioAndVideoModelObj
class AudioAndVideoProvider extends ChangeNotifier {
  AudioAndVideoModel audioAndVideoModelObj = AudioAndVideoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
