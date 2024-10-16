import 'package:my_cv/core/libs.dart';

class AppConst {
  //// double
  static const double titleblocHeight = 35;
  static const double titleblocWidth = 150;
  static const double leftRibbonWidth = 200;
  static const double profileIconSize = 18;
  static const double titleIconSize = 22;
  static const double a4Format = 29.7 / 21;
  static const double maxCvWidth = 800;
  static const double maxCvHeight = maxCvWidth * a4Format + 215;
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
    Info(Txt.myWebsite, Icons.language),
    Info(Txt.myPhone, Icons.phone_outlined),
  ];

  static List<DescriptionItem> education = [
    DescriptionItem(
      title: Txt.educ1,
      description: Txt.educ1Txt,
      start: DateTime(2012, 09, 1),
      end: DateTime(2015, 06, 1),
      mode: ItemMode.studies,
    ),
    DescriptionItem(
      title: Txt.educ2,
      description: Txt.educ2Txt,
      start: DateTime(2015, 08, 1),
      end: DateTime(2016, 06, 1),
      mode: ItemMode.studies,
    ),
    DescriptionItem(
      title: Txt.educ3,
      description: Txt.educ3Txt,
      start: DateTime(2018, 12, 1),
      end: DateTime(2020, 06, 1),
      mode: ItemMode.studies,
    ),
  ];

  static List<DescriptionItem> experiences = [
    DescriptionItem(
      title: Txt.valratio,
      description: Txt.valratioProj,
      start: DateTime(2022, 7, 1),
      end: DateTime(2022, 10, 1),
      mode: ItemMode.experience,
    ),
    DescriptionItem(
      title: Txt.bucks,
      description: Txt.bucksProj,
      start: DateTime(2022, 10, 1),
      end: DateTime(2023, 2, 1),
      mode: ItemMode.experience,
    ),
    DescriptionItem(
      title: Txt.synox,
      description: Txt.synoxProj,
      start: DateTime(2023, 3, 1),
      end: DateTime(2023, 6, 1),
      mode: ItemMode.experience,
    ),
    DescriptionItem(
      title: Txt.entretienPP,
      description: Txt.entretienPPProj,
      start: DateTime(2023, 8, 1),
      end: DateTime(2023, 11, 1),
      mode: ItemMode.experience,
    ),
    DescriptionItem(
      title: Txt.jobMe,
      description: Txt.jobMeProj,
      start: DateTime(2023, 11, 1),
      end: DateTime(2024, 1, 1),
      mode: ItemMode.experience,
    ),
    DescriptionItem(
      title: Txt.okteo,
      description: Txt.okteoProj,
      start: DateTime(2024, 4, 1),
      end: DateTime(2024, 5, 1),
      mode: ItemMode.experience,
    ),
    DescriptionItem(
      title: Txt.mpp,
      description: Txt.mppProj,
      start: DateTime(2024, 6, 1),
      end: null,
      mode: ItemMode.experience,
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
    Skill(Txt.nextJs, 3),
    Skill(Txt.firebase, 4),
    Skill(Txt.python, 3),
    Skill(Txt.jsTs, 4),
    Skill(Txt.gcp, 2),
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
