import '../libs.dart';

final platformSizeProvider = ChangeNotifierProvider((ref) => SizeNotifier());

final changeThemeProvider = ChangeNotifierProvider((ref) {
  return ModeSwitcher();
});

/// Changes Theme mode : Theme.light <=> Theme.dark
class ModeSwitcher extends ChangeNotifier {
  bool _isNightMode = false;
  DateTime lastSwitched = DateTime.now();

  bool get isNightMode => _isNightMode;

  void switchTheme() {
    _isNightMode = !_isNightMode;
    notifyListeners();
  }
}
