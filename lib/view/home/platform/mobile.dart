import 'package:my_cv/libs.dart';

class MobileVersion extends StatelessWidget {
  const MobileVersion({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          MobileVersionProfile(),
          MobileVersionBottomPart(),
        ],
      ),
    );
  }
}

class MobileVersionProfile extends ConsumerStatefulWidget {
  const MobileVersionProfile({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MobileVersionProfileState();
}

class _MobileVersionProfileState extends ConsumerState<MobileVersionProfile> {
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

class MobileVersionBottomPart extends ConsumerStatefulWidget {
  const MobileVersionBottomPart({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MobileVersionBottomPartState();
}

class _MobileVersionBottomPartState
    extends ConsumerState<MobileVersionBottomPart> {
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
            CodingSkills(),
          ],
        ),
      ),
    );
  }
}
