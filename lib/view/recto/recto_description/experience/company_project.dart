import 'package:my_cv/core/libs.dart';

String titleFromItemMode(String title, ItemMode itemMode) {
  return itemMode == ItemMode.experience ? '$title :' : title.toUpperCase();
}

TextStyle titleStyleFromItemMode(BuildContext context, ItemMode itemMode) {
  if (itemMode == ItemMode.experience) {
    return TxtStyles.subtitleBoldText(context);
  } else {
    return TxtStyles.subtitle(context);
  }
}
