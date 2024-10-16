import 'package:my_cv/core/libs.dart';

class WebRibbon extends StatelessWidget {
  const WebRibbon({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: AppConst.leftRibbonWidth,
      child: Column(
        children: [
          RibbonTopProfile(),
          WebRibbonBottomProfile(),
        ],
      ),
    );
  }
}

class WebRibbonBottomProfile extends StatelessWidget {
  const WebRibbonBottomProfile({super.key});

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
          const Column(
            children: [
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
