import '../../../libs.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyTitle(Txt.aboutMe, Icons.person),
        Text(
          Txt.aboutMeTxt,
          style: TxtStyles.aboutMeTextStyle(context),
        ),
        const SizedBox(height: 50)
      ],
    );
  }
}

class CodingSkills extends StatelessWidget {
  const CodingSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyTitle(Txt.codingSkills, Icons.code),
        Align(
          alignment: Alignment.topLeft,
          child: Wrap(
            spacing: 40,
            runSpacing: 10,
            children: mySkills.map((s) => SkillRow(s, titleWidth: 80)).toList(),
          ),
        ),
      ],
    );
  }
}

class MyTitle extends StatelessWidget {
  final String title;
  final IconData icon;
  const MyTitle(this.title, this.icon, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: ext(context).circleAvatar,
              radius: 15,
              child: Icon(
                icon,
                size: MyConst.titleIconSize,
                color: ext(context).text,
              ),
            ),
            const SizedBox(width: 15),
            Text(
              title.toUpperCase(),
              style: TxtStyles.rightPartTitle(context),
            ),
          ],
        ),
        Divider(
          endIndent: 50,
          indent: 45,
          height: 10,
          thickness: 2,
          color: ext(context).divider,
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyTitle(Txt.experience, Icons.work),
        ...xp.map((i) => Subtitle(i)).toList(),
        const SizedBox(height: 20)
      ],
    );
  }
}

class Subtitle extends StatelessWidget {
  final EdXpInfos info;
  const Subtitle(this.info, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.arrow_forward_ios_rounded, size: 13),
            const SizedBox(width: 10),
            Text(info.title, style: TxtStyles.subtitle(context)),
            const Spacer(),
            Text(info.start.format(), style: TxtStyles.subtitleDate(context)),
            Text(' - ${info.end == null ? Txt.now : info.end!.format()}',
                style: TxtStyles.subtitleDate(context)),
          ],
        ),
        const SizedBox(height: 5),
        Text(info.text, style: TxtStyles.subtitleText(context)),
        const SizedBox(height: 30),
      ],
    );
  }
}

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyTitle(Txt.education, Icons.school),
        ...educ.map((i) => Subtitle(i)).toList(),
        const SizedBox(height: 20)
      ],
    );
  }
}
