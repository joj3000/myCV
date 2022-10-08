import '../libs.dart';

class MyConst {
  //// double
  static const double titleblocHeight = 35;
  static const double titleblocWidth = 150;
  static const double leftRibbonWidth = 200;
  static const double profileIconSize = 18;
  static const double titleIconSize = 22;
  static const double a4Format = 29.7 / 21;
  static const double maxCvWidth = 800;
  static const double maxCvHeight = maxCvWidth * a4Format;
  static const double profilePictureRadius = 60;
  static const double profilePictureRadiusMobile = 70;

  /// Colors
  static const Color bgColor = Color.fromARGB(245, 255, 255, 255);
}

List<Info> myInfos = const [
  Info(Txt.myInfos, Icons.info),
  Info(Txt.myPlace, Icons.location_on),
  Info(Txt.myEmail, Icons.email, type: InfoType.email),
  Info(Txt.myGithub, FontAwesomeIcons.github, type: InfoType.github),
  Info(Txt.myWebsite, Icons.language, type: InfoType.website),
];

List<EdXpInfos> educ = [
  EdXpInfos(
    Txt.educ1,
    Txt.educ1Txt,
    DateTime(2012, 9),
    DateTime(2015, 6),
  ),
  EdXpInfos(
    Txt.educ2,
    Txt.educ2Txt,
    DateTime(2015, 8),
    DateTime(2016, 6),
  ),
  EdXpInfos(
    Txt.educ3,
    Txt.educ3Txt,
    DateTime(2018, 12),
    DateTime(2020, 6),
  ),
];

List<EdXpInfos> xp = [
  EdXpInfos(
    Txt.xp1,
    Txt.xp1Txt,
    DateTime(2020, 6),
    null,
  ),
  EdXpInfos(
    Txt.xp2,
    Txt.xp2Txt,
    DateTime(2022, 7),
    null,
  ),
  EdXpInfos(
    Txt.xp3,
    Txt.xp3Txt,
    DateTime(2020, 6),
    null,
  ),
];

List<String> myHobbies = [
  Txt.hobby1,
  Txt.hobby2,
  Txt.hobby3,
];

List<Skill> mySkills = const [
  Skill(Txt.flutter, 5),
  Skill(Txt.python, 3),
  Skill(Txt.firebase, 3),
  Skill(Txt.gcp, 3),
  Skill(Txt.docker, 2),
  Skill(Txt.jsTs, 1),
];

List<Skill> myLanguages = const [
  Skill(Txt.french, 5),
  Skill(Txt.english, 5),
  Skill(Txt.spanish, 2),
];

List<Skill> myOtherSkills = const [
  Skill(Txt.psd, 4),
  Skill(Txt.ai, 4),
  Skill(Txt.xd, 3),
];
