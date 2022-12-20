import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;
import '../libs.dart';

class DL {
  static Future<void> downloadCV(BuildContext context) async {
    MyAnalytics.downloadClicked();
    try {
      final bool isFrench = context.locale.languageCode == 'fr';

      final ByteData byteData =
          await rootBundle.load(isFrench ? Img.myCVFr : Img.myCVEn);
      final Uint8List uint8list = byteData.buffer.asUint8List();
      await WebImageDownloader().downloadImageFromUInt8List(
          uInt8List: uint8list, name: Txt.myCvFileName.tr());
    } catch (e) {
      MySnacks.showSnack(context, Txt.errorOccured.tr(), 250);
    }
  }
}
