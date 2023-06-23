import '../../../libs.dart';

class Ribbon extends StatelessWidget {
  const Ribbon({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppConst.leftRibbonWidth,
      child: Column(
        children: const [
          TopProfile(),
          RibbonBottomProfile(),
        ],
      ),
    );
  }

  /// Part of the profile inside the colored ribbon
}

class RibbonBottomProfile extends StatelessWidget {
  const RibbonBottomProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            children: [
              Expanded(
                child: Container(color: ext(context).ribbonBackground),
              ),
            ],
          ),
          Column(
            children: const [
              Infos(),
              Skills(Txt.languages, AppConst.myLanguages, isMobile: true),
              Skills(Txt.otherSkills, AppConst.myOtherSkills,
                  isMobile: true, fontSize: 11),
              TxtInfos(Txt.softSkills, AppConst.mySoftSkills),
              TxtInfos(Txt.hobbies, AppConst.myHobbies),
            ],
          ),
        ],
      ),
    );
  }
}
