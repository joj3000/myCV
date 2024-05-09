import 'package:my_cv/core/libs.dart';

class RibbonMobile extends ConsumerStatefulWidget {
  const RibbonMobile({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MobileVersionProfileState();
}

class _MobileVersionProfileState extends ConsumerState<RibbonMobile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(color: ext(context).ribbonBackground),
          child: Column(
            children: [
              const SizedBox(height: 15),
              const RibbonTopProfile(isMobile: true),
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
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: Infos()),
        Expanded(
          child: Skills(Txt.languages, AppConst.myLanguages, isMobile: true),
        ),
      ],
    );
  }

  Widget skills2() {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Skills(
            Txt.otherSkills,
            AppConst.myOtherSkills,
            isMobile: true,
            fontSize: 11,
          ),
        ),
        Expanded(
          child: TxtInfos(Txt.hobbies, AppConst.myHobbies, isMobile: true),
        ),
      ],
    );
  }
}

class DescriptionMobile extends ConsumerStatefulWidget {
  const DescriptionMobile({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MobileVersionBottomPartState();
}

class _MobileVersionBottomPartState extends ConsumerState<DescriptionMobile> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: ext(context).background),
      child: const Padding(
        padding: EdgeInsets.fromLTRB(30, 50, 30, 30),
        child: Column(
          children: [
            AboutMe(),
            Education(),
            Experience(),
          ],
        ),
      ),
    );
  }
}
