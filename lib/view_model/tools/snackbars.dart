import 'package:my_cv/core/libs.dart';

class AppSnacks {
  static showSnack(BuildContext context, String txt, double width,
      {Color? color}) {
    MyAnalytics.websiteClicked();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Align(
          heightFactor: 1,
          alignment: Alignment.center,
          child: Text(txt),
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: color ?? Colors.blue,
        width: width,
      ),
    );
  }
}
