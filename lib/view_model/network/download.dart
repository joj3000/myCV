import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:my_cv/core/libs.dart';

class DL {
  /// Download the CV in pdf, from assets, to the download folder of the user.
  static Future<void> downloadCV(BuildContext context) async {
    MyAnalytics.downloadClicked();
    try {
      final bool isFrench = context.locale.languageCode == 'fr';

      final ByteData byteData = await rootBundle.load(isFrench ? Img.myCVFr : Img.myCVEn);
      final Uint8List uint8list = byteData.buffer.asUint8List();
      download(Stream<int>.fromIterable(uint8list), 'CV - Joran ERBS (${isFrench ? "FR" : "EN"}).pdf');
    } catch (e) {
      if (context.mounted) {
        AppSnacks.showSnack(context, Txt.errorOccured.tr(), 250);
      }
    }
  }
}
