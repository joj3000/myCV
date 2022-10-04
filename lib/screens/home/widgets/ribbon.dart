import '../../../libs.dart';

class Ribbon extends StatelessWidget {
  const Ribbon({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MyConst.leftRibbonWidth,
      child: Column(
        children: [
          const TopProfile(),
          bottomProfile(context),
        ],
      ),
    );
  }

  /// Part of the profile inside the colored ribbon
  Widget bottomProfile(BuildContext context) {
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
            children: [
              const Infos(),
              Skills(Txt.languages, myLanguages, isMobile: true),
              Skills(
                Txt.otherSkills,
                myOtherSkills,
                isMobile: true,
                fontSize: 11,
              ),
              const Hobbies(),
            ],
          ),
        ],
      ),
    );
  }
}
