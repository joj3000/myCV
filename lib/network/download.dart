import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;

import '../libs.dart';

class DL {
  static Future<void> downloadCV(BuildContext context) async {
    try {
      final ByteData byteData = await rootBundle.load(Img.myCV);
      final Uint8List uint8list = byteData.buffer.asUint8List();
      final stream = Stream.fromIterable(uint8list);
      download(stream, Txt.myCvFileName);
    } catch (e) {
      MySnacks.showSnack(context, Txt.errorOccured, 250);
    }
  }
}
