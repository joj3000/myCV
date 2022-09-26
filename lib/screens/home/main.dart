import '../../libs.dart';

/// Main widget
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: MyConst.bgColor,
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Material(
              elevation: 70,
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                    maxWidth: MyConst.maxCvWidth,
                    maxHeight: MyConst.maxCvHeight),
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context)
                      .copyWith(scrollbars: false),
                  child: Row(
                    children: const [
                      Ribbon(),
                      RightPart(),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(right: 10, top: 0, child: dayNightSwitch(ref))
          ],
        ),
      ),
    );
  }

  /// Theme mode switch
  Widget dayNightSwitch(WidgetRef ref) {
    final mode = ref.watch(changeThemeProvider);
    return SizedBox(
      width: 45,
      height: 45,
      child: DayNightSwitcher(
        nightBackgroundColor: const Color(0xff282A36),
        isDarkModeEnabled: mode.isNightMode,
        onStateChanged: (isDarkModeEnabled) {
          mode.switchTheme();
        },
      ),
    );
  }
}
