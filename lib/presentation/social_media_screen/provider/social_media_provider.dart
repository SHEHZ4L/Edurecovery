import 'package:flutter/material.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:edurecovery/presentation/social_media_screen/models/social_media_model.dart';

/// A provider class for the SocialMediaScreen.
///
/// This provider manages the state of the SocialMediaScreen, including the
/// current socialMediaModelObj
class SocialMediaProvider extends ChangeNotifier {
  SocialMediaModel socialMediaModelObj = SocialMediaModel();

  @override
  void dispose() {
    super.dispose();
  }
}
