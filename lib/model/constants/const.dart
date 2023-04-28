import '../../libs.dart';

class AppConst {
  //// double
  static const double titleblocHeight = 35;
  static const double titleblocWidth = 150;
  static const double leftRibbonWidth = 200;
  static const double profileIconSize = 18;
  static const double titleIconSize = 22;
  static const double a4Format = 29.7 / 21;
  static const double maxCvWidth = 800;
  static const double maxCvHeight = maxCvWidth * a4Format + 100;
  static const double profilePictureRadius = 120;
  static const double profilePictureRadiusMobile = 140;

  /// Colors
  static const Color bgColor = Color.fromARGB(245, 255, 255, 255);

  /// Duration
  static const Duration profileFadeIn = Duration(milliseconds: 50);

  static const List<Info> myInfos = [
    Info(Txt.myInfos, Icons.info),
    Info(Txt.myPlace, Icons.location_on),
    Info(Txt.myEmail, Icons.email, type: InfoType.email),
    Info(Txt.myGithub, FontAwesomeIcons.github, type: InfoType.github),
    Info(Txt.myWebsite, Icons.language, type: InfoType.website),
  ];

  static List<EdXpInfos> educ = [
    EdXpInfos(
      Txt.educ1,
      Txt.educ1Txt,
      [],
      DateTime(2012, 9),
      DateTime(2015, 6),
    ),
    EdXpInfos(
      Txt.educ2,
      Txt.educ2Txt,
      [],
      DateTime(2015, 8),
      DateTime(2016, 6),
    ),
    EdXpInfos(
      Txt.educ3,
      Txt.educ3Txt,
      [],
      DateTime(2018, 12),
      DateTime(2020, 6),
    ),
  ];

  static List<EdXpInfos> xp = [
    EdXpInfos(
      Txt.xp1,
      Txt.xp1Txt,
      [],
      DateTime(2020, 6),
      null,
    ),
    EdXpInfos(
      Txt.xp2,
      Txt.xp2Txt,
      const [
        CompanyProj(Txt.valratio, Txt.valratioProj),
        CompanyProj(Txt.bucks, Txt.bucksProj),
      ],
      DateTime(2022, 7),
      null,
    ),
    EdXpInfos(
      Txt.xp3,
      Txt.xp3Txt,
      [],
      DateTime(2020, 6),
      null,
    ),
  ];

  static const List<String> myHobbies = [
    Txt.hobby1,
    Txt.hobby2,
    Txt.hobby3,
  ];

  static const List<String> mySoftSkills = [
    Txt.softSkill1,
    Txt.softSkill2,
    Txt.softSkill3,
  ];

  static const List<Skill> mySkills = [
    Skill(Txt.flutter, 5),
    Skill(Txt.python, 3),
    Skill(Txt.firebase, 3),
    Skill(Txt.gcp, 3),
    Skill(Txt.docker, 2),
    Skill(Txt.jsTs, 1),
  ];

  static const List<Skill> myLanguages = [
    Skill(Txt.french, 5),
    Skill(Txt.english, 5),
    Skill(Txt.spanish, 2),
  ];

  static const List<Skill> myOtherSkills = [
    Skill(Txt.psd, 4),
    Skill(Txt.ai, 4),
    Skill(Txt.xd, 3),
  ];
}
