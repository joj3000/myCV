import 'package:my_cv/core/libs.dart';

final changeThemeProvider = ChangeNotifierProvider((ref) {
  return ModeSwitcher();
});

/// Changes Theme mode : Theme.light <=> Theme.dark
class ModeSwitcher extends ChangeNotifier {
  bool _isNightMode = false;
  DateTime lastSwitched = DateTime.now();

  bool get isNightMode => _isNightMode;

  void switchTheme() {
    MyAnalytics.themeClicked();
    _isNightMode = !_isNightMode;
    notifyListeners();
  }
}
