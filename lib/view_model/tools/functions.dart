import 'package:flutter/services.dart';
import 'package:my_cv/core/libs.dart';

class MyFunctions {
  static void clickable(BuildContext context, Info info) async {
    switch (info.type) {
      case InfoType.website:
        AppSnacks.showSnack(context, Txt.alreadyThere.tr(), 250);
        break;
      case InfoType.email:
        Clipboard.setData(ClipboardData(text: info.text.tr()));
        AppSnacks.showSnack(context, Txt.copiedToClipboard.tr(), 250);
        break;
      case InfoType.github:
        MyUrl.launchMyUrl(context, url: Txt.githubUrl);
        break;
      default:
    }
  }
}
