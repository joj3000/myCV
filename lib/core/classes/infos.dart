import 'package:my_cv/core/libs.dart';

class Info {
  final String text;
  final dynamic icon;
  final InfoType type;

  const Info(this.text, this.icon, {this.type = InfoType.none});
}
