import '../libs.dart';

class MyUrl {
  static Future<void> launchMyUrl(BuildContext context,
      {required String url}) async {
    try {
      await launchUrl(Uri.parse(url));
    } catch (e) {
      MySnacks.showSnack(context, Txt.errorOccured, 200);
    }
  }

  static Future<void> launchMyEmail(BuildContext context,
      {required String email}) async {
    try {
      await launchUrl(Uri.parse(email));
    } catch (e) {
      MySnacks.showSnack(context, Txt.errorOccured, 200);
    }
  }

  // await launchUrl(Uri.parse("mailto:email?subject=subject&body=body"))
}
