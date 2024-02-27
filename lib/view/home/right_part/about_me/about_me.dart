import 'package:my_cv/libs.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyTitle(Txt.aboutMe, Icons.person),
        Text(Txt.aboutMeTxt.tr(), style: TxtStyles.aboutMeTextStyle(context)),
        const SizedBox(height: 50)
      ],
    );
  }
}
