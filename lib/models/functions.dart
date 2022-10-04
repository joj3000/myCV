import '../libs.dart';

class MyFunctions {
  static void clickable(BuildContext context, Info info) {
    switch (info.type) {
      case InfoType.website:
        MySnacks.showSnack(context, Txt.alreadyThere, 250);
        break;
      case InfoType.email:
        MyUrl.launchMyEmail(context,
            email: "mailto:${Txt.myEmail}?subject=subject&body=body");
        break;
      case InfoType.github:
        MyUrl.launchMyUrl(context, url: Txt.githubUrl);
        // MySnacks.showSnack(context, Txt.myEmail, 250);
        break;
      default:
    }
    // if (info.type.contains('www.')) {
    //   MySnacks.showSnack(context, Txt.alreadyThere, 250);
    // } else {
    //   MyUrl.launchMyUrl(context, url: Txt.githubUrl);
    // }
  }
}
