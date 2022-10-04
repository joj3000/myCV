import '../libs.dart';

class TxtStyles {
  /// Top left profile
  static TextStyle firstName(ctx) =>
      TextStyle(fontSize: 30, height: 1, color: ext(ctx).text);

  static TextStyle lastName(ctx) => TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w600,
      height: 1,
      color: ext(ctx).text);

  static TextStyle job(ctx) => TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      letterSpacing: 1,
      color: ext(ctx).text);

  /// Bottom left profile
  static const TextStyle titleBloc =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white);

  /// profile text
  static TextStyle profileText(ctx) => TextStyle(
      fontSize: 12, fontWeight: FontWeight.w500, color: ext(ctx).ribbonText);

  /// profile language text
  static TextStyle profileLanguageText(ctx) => TextStyle(
      fontSize: 13, fontWeight: FontWeight.w500, color: ext(ctx).ribbonText);

  /// right part
  static TextStyle rightPartTitle(ctx) => TextStyle(
      fontSize: 18, fontWeight: FontWeight.bold, color: ext(ctx).title);

  /// about me txt
  static TextStyle aboutMeTextStyle(ctx) => TextStyle(
      fontSize: 13.5, fontWeight: FontWeight.w500, color: ext(ctx).text);

  /// subtitle
  static TextStyle subtitle(ctx) => TextStyle(
      fontSize: 14, fontWeight: FontWeight.w700, color: ext(ctx).text);

  /// subtitle text
  static TextStyle subtitleText(ctx) => TextStyle(
      fontSize: 13, fontWeight: FontWeight.w500, color: ext(ctx).text);

  /// subtitle date
  static TextStyle subtitleDate(ctx) => TextStyle(
      fontSize: 11, fontWeight: FontWeight.w300, color: ext(ctx).text);

  /// hobby text
  static TextStyle hobbyTxt(ctx) => TextStyle(
      fontSize: 13, fontWeight: FontWeight.w500, color: ext(ctx).ribbonText);
}
