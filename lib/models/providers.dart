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
    /// "difference" is used to prevent infinite switching back and forth that would happen when clicking fast on the switch
    if (DateTime.now().difference(lastSwitched).inMilliseconds > 600) {
      lastSwitched = DateTime.now();
      _isNightMode = !_isNightMode;
      notifyListeners();
    }
  }
}
