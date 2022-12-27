import '../libs.dart';

class MobileVersion extends StatelessWidget {
  const MobileVersion({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          profile(context),
          bottomPart(context),
        ],
      ),
    );
  }

  Widget profile(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(color: ext(context).ribbonBackground),
          child: Column(
            children: [
              const SizedBox(height: 15),
              const TopProfile(isMobile: true),
              skills1(),
              skills2(),
              const SizedBox(height: 50)
            ],
          ),
        ),
        const Positioned(right: 15, top: 15, child: TopButtons(isMobile: true)),
      ],
    );
  }

  Widget skills1() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Expanded(child: Infos()),
        Expanded(
          child: Skills(Txt.languages, myLanguages, isMobile: true),
        ),
      ],
    );
  }

  Widget skills2() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Expanded(
          child: Skills(
            Txt.otherSkills,
            myOtherSkills,
            isMobile: true,
            fontSize: 11,
          ),
        ),
        Expanded(
          child: TxtInfos(Txt.hobbies, myHobbies, isMobile: true),
        ),
      ],
    );
  }

  Widget bottomPart(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: ext(context).background),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 50, 30, 30),
        child: Column(
          children: const [
            AboutMe(),
            Education(),
            Experience(),
            CodingSkills(),
          ],
        ),
      ),
    );
  }
}
