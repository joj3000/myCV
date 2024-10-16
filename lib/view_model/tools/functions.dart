import 'package:my_cv/core/libs.dart';

class MyFunctions {
  static void clickable(BuildContext context, Info info) {
    switch (info.type) {
      case InfoType.website:
        AppSnacks.showSnack(context, Txt.alreadyThere.tr(), 250);
        break;
      case InfoType.email:
        MyUrl.launchMyEmail(context,
            email:
                "mailto:${Txt.myEmail.tr()}?subject=Contact&body=Hey Joran,");
        break;
      case InfoType.github:
        MyUrl.launchMyUrl(context, url: Txt.githubUrl);
        break;
      default:
    }
  }
}
