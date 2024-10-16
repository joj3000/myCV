import 'package:my_cv/core/libs.dart';

/// Firebase Analytics for logging user connection and interactions
class MyAnalytics {
  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  static userConnected() async => await analytics.logEvent(
        name: 'Connected',
      );
  static githubClicked() async =>
      await analytics.logEvent(name: 'Github clicked');
  static emailClicked() async =>
      await analytics.logEvent(name: 'Email clicked');
  static websiteClicked() async =>
      await analytics.logEvent(name: 'Website clicked');
  static downloadClicked() async =>
      await analytics.logEvent(name: 'Download clicked');
  static themeClicked() async =>
      await analytics.logEvent(name: 'Theme clicked');
}
