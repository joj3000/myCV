import 'package:my_cv/core/libs.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyTitle(Txt.aboutMe, Icons.person, isTop: true),
        const SizedBox(height: 20),
        Text(Txt.aboutMeTxt.tr(), style: TxtStyles.aboutMeTextStyle(context)),
      ],
    );
  }
}
