import 'package:my_cv/core/libs.dart';

class MyUrl {
  static Future<void> launchMyUrl(BuildContext context, {required String url}) async {
    MyAnalytics.githubClicked();
    try {
      await launchUrl(Uri.parse(url.tr()));
    } catch (e) {
      if (context.mounted) {
        AppSnacks.showSnack(context, Txt.errorOccured.tr(), 200);
      }
    }
  }

  static Future<void> launchMyEmail(BuildContext context, {required String email}) async {
    MyAnalytics.emailClicked();

    try {
      await launchUrl(Uri.parse(email));
    } catch (e) {
      if (context.mounted) {
        AppSnacks.showSnack(context, Txt.errorOccured.tr(), 200);
      }
    }
  }
}
