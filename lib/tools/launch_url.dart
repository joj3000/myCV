import '../libs.dart';

class MyUrl {
  static Future<void> launchMyUrl(BuildContext context,
      {required String url}) async {
    MyAnalytics.githubClicked();
    try {
      await launchUrl(Uri.parse(url.tr()));
    } catch (e) {
      MySnacks.showSnack(context, Txt.errorOccured.tr(), 200);
    }
  }

  static Future<void> launchMyEmail(BuildContext context,
      {required String email}) async {
    MyAnalytics.emailClicked();

    try {
      await launchUrl(Uri.parse(email));
    } catch (e) {
      MySnacks.showSnack(context, Txt.errorOccured.tr(), 200);
    }
  }
}
