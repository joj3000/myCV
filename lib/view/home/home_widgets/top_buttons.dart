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
        if (isMobile) DLButton(isMobile: isMobile),
        if (!isMobile) const DLButton(),
        const SizedBox(width: 15),
        DayNightSwitch(isMobile),
      ],
    );
  }
}

class DayNightSwitch extends ConsumerStatefulWidget {
  final bool isMobile;

  const DayNightSwitch(this.isMobile, {super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DayNightSwitchState();
}

class _DayNightSwitchState extends ConsumerState<DayNightSwitch> {
  @override
  Widget build(BuildContext context) {
    final mode = ref.watch(changeThemeProvider);
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => mode.switchTheme(),
        child: Container(
          height: widget.isMobile ? 40 : 30,
          width: widget.isMobile ? 40 : 30,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: getBgSwitchColor(ref, context, mode)),
          child: Icon(
            mode.isNightMode ? Icons.light_mode : Icons.dark_mode,
            size: widget.isMobile ? 25 : 20,
            color: ext(context).themeSwitchIcon,
          ),
        ),
      ),
    );
  }

  Color? getBgSwitchColor(
      WidgetRef ref, BuildContext context, ModeSwitcher mode) {
    if (widget.isMobile) {
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

class DLButton extends ConsumerStatefulWidget {
  final bool isMobile;
  const DLButton({this.isMobile = false, super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DLButtonState();
}

class _DLButtonState extends ConsumerState<DLButton> {
  @override
  Widget build(BuildContext context) {
    return widget.isMobile ? mobileDL() : webDL();
  }

  Widget webDL() {
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

  Widget mobileDL() {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => DL.downloadCV(context),
        child: Container(
          height: widget.isMobile ? 40 : 30,
          width: widget.isMobile ? 40 : 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ext(context).ribbonBloc,
          ),
          child: Icon(
            Icons.picture_as_pdf_rounded,
            size: widget.isMobile ? 25 : 18,
            color: ext(context).themeSwitchIcon,
          ),
        ),
      ),
    );
  }
}
