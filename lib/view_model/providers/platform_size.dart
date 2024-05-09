import 'package:my_cv/core/libs.dart';

final platformSizeProvider = ChangeNotifierProvider((ref) => SizeNotifier());

/* 
  The purpose of the below widget MySizer is to rebuild its childs only when the current width
  of the window crosses the defined steps (defined in the PlatformSize enum). 
  This MySizer widget is supposed to be put (almost) at top of the widget tree.
*/

/// platform size (upper) steps

/// Will notify its listeners when the (window's) width cross any of the PlatformSize steps.
class SizeNotifier extends ChangeNotifier {
  Size? _size;
  PlatformSize? _platformSize;

  double get totalWidth => _size!.width;
  double get totalHeight => _size!.height;
  PlatformSize? get platform => _platformSize;

  ///  _PlatformSize setter
  void setPlatformSize(PlatformSize newPlatformSize, {bool init = false}) {
    _platformSize = newPlatformSize;
    if (!init) notifyListeners();
  }

  /// Convert current window width to its corresponding PlatformSize
  PlatformSize calPlatformSize(double currentWidth) {
    if (currentWidth < PlatformSize.mobile.width) {
      return PlatformSize.mobile;
    } else if (currentWidth >= PlatformSize.mobile.width &&
        currentWidth < PlatformSize.tablet.width) {
      return PlatformSize.tablet;
    } else {
      return PlatformSize.web;
    }
  }

  /// Notify listeners that _platformSize has changed
  void setPlatform(double currentWidth, {bool init = false}) {
    final currentPlatformSize = calPlatformSize(currentWidth);
    if (_platformSize == null) {
      setPlatformSize(currentPlatformSize, init: init);
      return;
    } else if (_platformSize != currentPlatformSize) {
      setPlatformSize(currentPlatformSize, init: init);
    }
  }
}
