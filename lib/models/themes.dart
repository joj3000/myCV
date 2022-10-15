import '../libs.dart';

class MyThemes {
  static final light = ThemeData(
    fontFamily: 'Poppins',
    extensions: const [
      MyColors(
        background: Colors.white,
        text: Color(0xff47464b),
        title: Color(0xff47464b),
        ribbonBackground: Color(0xffEEC0C0),
        ribbonBloc: Color(0xff47464b),
        ribbonBlocTitle: Colors.white,
        ribbonText: Color(0xff47464b),
        circleAvatar: Color(0xffEEC0C0),
        ribbonDotActive: Color(0xff47464b),
        ribbonDotInactive: Colors.white,
        rightPartDotActive: Color(0xff47464b),
        rightPartDotInactive: Color.fromARGB(255, 224, 224, 224),
        divider: Color(0xff47464b),
        themeSwitchIcon: Colors.white,
      )
    ],
  );

  static final dark = ThemeData(
    fontFamily: 'Poppins',
    extensions: const [
      MyColors(
        background: Color(0xff5a6893),
        ribbonBackground: Color(0xff282A36),
        text: Colors.white,
        title: Color(0xff282A36),
        ribbonBloc: Color(0xff5a6893),
        ribbonBlocTitle: Colors.white,
        ribbonText: Colors.white,
        circleAvatar: Color(0xff282A36),
        ribbonDotInactive: Color(0xff5a6893),
        ribbonDotActive: Color.fromARGB(255, 246, 246, 246),
        rightPartDotInactive: Color(0xff282A36),
        rightPartDotActive: Color.fromARGB(255, 246, 246, 246),
        divider: Color(0xff282A36),
        themeSwitchIcon: Colors.white,
      ),
    ],
  );
}

/// My color theme extension
class MyColors extends ThemeExtension<MyColors> {
  const MyColors({
    required this.background,
    required this.text,
    required this.title,
    required this.ribbonBackground,
    required this.ribbonBloc,
    required this.ribbonBlocTitle,
    required this.ribbonText,
    required this.circleAvatar,
    required this.ribbonDotActive,
    required this.ribbonDotInactive,
    required this.rightPartDotActive,
    required this.rightPartDotInactive,
    required this.divider,
    required this.themeSwitchIcon,
  });

  final Color? background;
  final Color? text;
  final Color? title;
  final Color? ribbonBackground;
  final Color? ribbonBloc;
  final Color? ribbonBlocTitle;
  final Color? ribbonText;
  final Color? circleAvatar;
  final Color? ribbonDotActive;
  final Color? ribbonDotInactive;
  final Color? rightPartDotActive;
  final Color? rightPartDotInactive;
  final Color? divider;
  final Color? themeSwitchIcon;

  @override
  MyColors copyWith({
    Color? background,
    Color? text,
    Color? title,
    Color? ribbonBackground,
    Color? ribbonBloc,
    Color? titleBloc,
    Color? ribbonBlocTitle,
    Color? ribbonText,
    Color? circleAvatar,
    Color? ribbonDotActive,
    Color? ribbonDotInactive,
    Color? rightPartDotActive,
    Color? rightPartDotInactive,
    Color? divider,
    Color? themeSwitchIcon,
  }) {
    return MyColors(
      background: background ?? this.background,
      text: text ?? this.text,
      title: title ?? this.title,
      ribbonBackground: ribbonBackground ?? this.ribbonBackground,
      ribbonBloc: ribbonBloc ?? this.ribbonBloc,
      ribbonBlocTitle: ribbonBlocTitle ?? this.ribbonBlocTitle,
      ribbonText: ribbonText ?? this.ribbonText,
      circleAvatar: circleAvatar ?? this.circleAvatar,
      ribbonDotActive: ribbonDotActive ?? this.ribbonDotActive,
      ribbonDotInactive: ribbonDotInactive ?? this.ribbonDotInactive,
      rightPartDotActive: rightPartDotActive ?? this.rightPartDotActive,
      rightPartDotInactive: rightPartDotInactive ?? this.rightPartDotInactive,
      divider: divider ?? this.divider,
      themeSwitchIcon: themeSwitchIcon ?? this.themeSwitchIcon,
    );
  }

  @override
  MyColors lerp(ThemeExtension<MyColors>? other, double t) {
    if (other is! MyColors) {
      return this;
    }
    return MyColors(
      background: Color.lerp(background, other.background, t),
      text: Color.lerp(text, other.text, t),
      title: Color.lerp(title, other.title, t),
      ribbonBackground: Color.lerp(ribbonBackground, other.ribbonBackground, t),
      ribbonBloc: Color.lerp(ribbonBloc, other.ribbonBloc, t),
      ribbonBlocTitle: Color.lerp(ribbonBlocTitle, other.ribbonBlocTitle, t),
      ribbonText: Color.lerp(ribbonText, other.ribbonText, t),
      circleAvatar: Color.lerp(circleAvatar, other.circleAvatar, t),
      ribbonDotActive: Color.lerp(ribbonDotActive, other.ribbonDotActive, t),
      ribbonDotInactive:
          Color.lerp(ribbonDotInactive, other.ribbonDotInactive, t),
      rightPartDotActive:
          Color.lerp(rightPartDotActive, other.rightPartDotActive, t),
      rightPartDotInactive:
          Color.lerp(rightPartDotInactive, other.rightPartDotInactive, t),
      divider: Color.lerp(divider, other.divider, t),
      themeSwitchIcon: Color.lerp(themeSwitchIcon, other.themeSwitchIcon, t),
    );
  }
}

MyColors ext(BuildContext context) => Theme.of(context).extension<MyColors>()!;
