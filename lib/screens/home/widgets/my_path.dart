import '../../../libs.dart';

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
            Text(title.tr().toUpperCase(),
                style: TxtStyles.rightPartTitle(context)),
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
            Text(info.title.tr(), style: TxtStyles.subtitle(context)),
            const Spacer(),
            Text(info.start.format(), style: TxtStyles.subtitleDate(context)),
            Text(' - ${info.end == null ? Txt.now.tr() : info.end!.format()}',
                style: TxtStyles.subtitleDate(context)),
          ],
        ),
        const SizedBox(height: 5),
        if (info.projects.isEmpty)
          Text(info.text.tr(), style: TxtStyles.subtitleText(context)),
        if (info.projects.isNotEmpty) XPSubtitle(info),
        const SizedBox(height: 30),
      ],
    );
  }
}

class XPSubtitle extends StatelessWidget {
  final EdXpInfos info;
  const XPSubtitle(this.info, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        info.projects.length,
        (i) => CompanyProject(
          info.projects[i].company.tr(),
          info.projects[i].project.tr(),
          paddingTop: i == info.projects.length - 1,
        ),
      ),
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

class CompanyProject extends ConsumerWidget {
  final String company;
  final String project;
  final bool paddingTop;
  const CompanyProject(
    this.company,
    this.project, {
    super.key,
    this.paddingTop = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, paddingTop ? 15 : 5, 0, 0),
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(text: company, style: TxtStyles.subtitleBoldText(context)),
            TextSpan(text: ' : $project'),
          ],
        ),
        style: TxtStyles.subtitleText(context),
      ),
    );
  }
}
