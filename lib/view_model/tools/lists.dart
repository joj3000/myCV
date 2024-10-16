import 'package:my_cv/core/libs.dart';

class LstTools {
  /// Adds a comma at the end of each string in a List<String>, except the last string
  ///
  /// ex: ['aaa', 'bbb', 'ccc'] => ['aaa,', 'bbb,', 'ccc']
  static List<String> addComas(List<String> lst) {
    if (lst.length <= 1) {
      return lst.map((e) => e.tr()).toList();
    } else {
      final comaAdded =
          lst.sublist(0, lst.length - 1).map((str) => '${str.tr()},').toList();
      return comaAdded..add(lst.last.tr());
    }
  }
}
