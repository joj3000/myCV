import 'package:my_cv/core/libs.dart';

class TopButtons extends ConsumerWidget {
  final bool isMobile;
  final bool verso;

  const TopButtons({
    super.key,
    this.isMobile = false,
    this.verso = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const CountryDropdown(),

        if (isMobile) const SizedBox(width: 5),

        /// Day-night button
        RoundedSwitch(
          isMobile,
          onIcon: Icons.light_mode,
          offIcon: Icons.dark_mode,
          onTap: ref.read(changeThemeProvider).switchTheme,
          verso: verso,
        ),
        const SizedBox(width: 15),
        if (isMobile) DLButton(isMobile: isMobile, verso: verso),
        if (!isMobile) const DLButton(),
        const SizedBox(width: 15),

        /// Recto-verso button
        RoundedSwitch(
          isMobile,
          offIcon: Icons.sync,
          onIcon: Icons.sync,
          onTap: flipKey.currentState!.toggleCard,
          verso: verso,
        ),
      ],
    );
  }
}

class RoundedSwitch extends ConsumerStatefulWidget {
  final bool isMobile;
  final IconData onIcon;
  final IconData offIcon;
  final Function() onTap;
  final bool verso;

  const RoundedSwitch(this.isMobile,
      {required this.onIcon, required this.offIcon, required this.onTap, this.verso = false, super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RoundedSwitchState();
}

class _RoundedSwitchState extends ConsumerState<RoundedSwitch> {
  @override
  Widget build(BuildContext context) {
    final mode = ref.watch(changeThemeProvider);
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          height: widget.isMobile ? 40 : 30,
          width: widget.isMobile ? 40 : 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: getBgSwitchColor(context, ref, widget.isMobile, mode, swapColors: widget.isMobile && widget.verso),
          ),
          child: Icon(
            mode.isNightMode ? widget.onIcon : widget.offIcon,
            size: widget.isMobile ? 25 : 20,
            color: ext(context).themeSwitchIcon,
          ),
        ),
      ),
    );
  }
}

class DLButton extends ConsumerStatefulWidget {
  final bool isMobile;
  final bool verso;
  const DLButton({this.isMobile = false, this.verso = false, super.key});

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
    final mode = ref.watch(changeThemeProvider);

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => DL.downloadCV(context),
        child: Container(
          height: widget.isMobile ? 40 : 30,
          width: widget.isMobile ? 40 : 30,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              // color:  ext(context).get ribbonBloc,
              color:
                  getBgSwitchColor(context, ref, widget.isMobile, mode, swapColors: widget.isMobile && widget.verso)),
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

Color? getBgSwitchColor(BuildContext context, WidgetRef ref, bool isMobile, ModeSwitcher mode,
    {bool swapColors = false}) {
  if (isMobile) {
    return mode.isNightMode && swapColors
        ? ext(context).ribbonBackground
        : mode.isNightMode
            ? ext(context).ribbonBloc
            : ext(context).ribbonBloc;
  } else {
    return mode.isNightMode ? ext(context).ribbonBackground : ext(context).ribbonBloc;
  }
}
