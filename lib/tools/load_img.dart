import 'package:flutter/services.dart';

import '../libs.dart';

class LoadImgs {
  Future<Uint8List> profile() async {
    final ByteData bytes = await rootBundle.load('assets/image.jpg');
    return bytes.buffer.asUint8List();
  }
}
