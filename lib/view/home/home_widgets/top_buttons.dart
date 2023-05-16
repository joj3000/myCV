import '../../../libs.dart';

class TopButtons extends ConsumerWidget {
  final bool isMobile;
  const TopButtons({
    super.key,
    this.isMobile = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isMobile) const SizedBox(width: 15),
        const CountryDropdown(),
        const SizedBox(width: 5),
        if (isMobile) mobileDL(ref, context),
        if (!isMobile) webDL(ref, context),
        const SizedBox(width: 15),
        dayNightSwitch(ref, context),
      ],
    );
  }

  Widget webDL(WidgetRef ref, BuildContext context) {
    return ElevatedButton(
      onPressed: () => DL.downloadCV(context),
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: ext(context).title,
        padding: const EdgeInsets.symmetric(horizontal: 10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            Txt.dl.tr(),
            style: TextStyle(color: ext(context).themeSwitchIcon, fontSize: 10),
          ),
          const SizedBox(width: 10),
          Icon(
            Icons.picture_as_pdf_rounded,
            size: 17,
            color: ext(context).themeSwitchIcon,
          ),
        ],
      ),
    );
  }

  Widget mobileDL(WidgetRef ref, BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => DL.downloadCV(context),
        child: Container(
          height: isMobile ? 40 : 30,
          width: isMobile ? 40 : 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ext(context).ribbonBloc,
          ),
          child: Icon(
            Icons.picture_as_pdf_rounded,
            size: isMobile ? 25 : 18,
            color: ext(context).themeSwitchIcon,
          ),
        ),
      ),
    );
  }

  Widget dayNightSwitch(WidgetRef ref, BuildContext context) {
    final mode = ref.watch(changeThemeProvider);
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => mode.switchTheme(),
        child: Container(
          height: isMobile ? 40 : 30,
          width: isMobile ? 40 : 30,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: getBgSwitchColor(ref, context, mode)),
          child: Icon(
            mode.isNightMode ? Icons.light_mode : Icons.dark_mode,
            size: isMobile ? 25 : 20,
            color: ext(context).themeSwitchIcon,
          ),
        ),
      ),
    );
  }

  Color? getBgSwitchColor(
      WidgetRef ref, BuildContext context, ModeSwitcher mode) {
    if (isMobile) {
      return mode.isNightMode
          ? ext(context).ribbonBloc
          : ext(context).ribbonBloc;
    } else {
      return mode.isNightMode
          ? ext(context).ribbonBackground
          : ext(context).ribbonBloc;
    }
  }
}
