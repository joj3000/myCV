import '../../libs.dart';
import 'dart:ui' as ui;

/// Changes the PlatformSize value according to the window's width.
class MySizer extends ConsumerStatefulWidget {
  final Widget webChild;
  final Widget tabletChild;
  final Widget mobileChild;
  const MySizer({
    Key? key,
    required this.webChild,
    required this.tabletChild,
    required this.mobileChild,
  }) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MySizerState();
}

class _MySizerState extends ConsumerState<MySizer> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    ref.read(platformSizeProvider).setPlatform(
        MediaQueryData.fromWindow(ui.window).size.width,
        init: true);
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    ref
        .read(platformSizeProvider)
        .setPlatform(MediaQueryData.fromWindow(ui.window).size.width);
  }

  @override
  Widget build(BuildContext context) {
    final platform = ref.watch(platformSizeProvider).platform;
    switch (platform) {
      case PlatformSize.mobile:
        return widget.mobileChild;
      case PlatformSize.tablet:
        return widget.tabletChild;
      default:
        return widget.webChild;
    }
  }
}
