import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;
import '../libs.dart';

class DL {
  static Future<void> downloadCV(BuildContext context) async {
    MyAnalytics.downloadClicked();
    try {
      final ByteData byteData = await rootBundle.load(Img.myCV);
      final Uint8List uint8list = byteData.buffer.asUint8List();
      await WebImageDownloader().downloadImageFromUInt8List(
          uInt8List: uint8list, name: Txt.myCvFileName);
    } catch (e) {
      MySnacks.showSnack(context, Txt.errorOccured, 250);
    }
  }
}
