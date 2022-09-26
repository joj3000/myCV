import '../../libs.dart';

class RightPart extends StatefulWidget {
  const RightPart({super.key});

  @override
  State<RightPart> createState() => _RightPartState();
}

class _RightPartState extends State<RightPart> {
  @override
  Widget build(BuildContext context) {
    final extension = Theme.of(context).extension<MyColors>()!;
    return Expanded(
      child: Container(
        height: MyConst.maxCvHeight,
        padding: const EdgeInsets.fromLTRB(50, 45, 50, 45),
        color: extension.background,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...aboutMe(context),
              ...education(context),
              ...experience(context),
              ...codingSkills(),
            ],
          ),
        ),
      ),
    );
  }

  Widget title(BuildContext context, String title, IconData icon) {
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
                )),
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

  List<Widget> aboutMe(context) {
    return [
      title(context, Txt.aboutMe, Icons.person),
      Text(
        Txt.aboutMeTxt,
        style: TxtStyles.aboutMeTextStyle(context),
      ),
      const SizedBox(height: 50)
    ];
  }

  List<Widget> education(context) {
    return [
      title(context, Txt.education, Icons.school),
      ...educ.map((i) => subtitle(i.title, i.text, i.start, i.end)).toList(),
      const SizedBox(height: 20)
    ];
  }

  List<Widget> experience(context) {
    return [
      title(context, Txt.experience, Icons.work),
      ...xp.map((i) => subtitle(i.title, i.text, i.start, i.end)).toList(),
      const SizedBox(height: 20)
    ];
  }

  Widget subtitle(String subtitle, String text, DateTime start, DateTime? end) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.arrow_forward_ios_rounded, size: 13),
            const SizedBox(width: 10),
            Text(subtitle, style: TxtStyles.subtitle(context)),
            const Spacer(),
            Text(start.format(), style: TxtStyles.subtitleDate(context)),
            Text(' - ${end == null ? Txt.now : end.format()}',
                style: TxtStyles.subtitleDate(context)),
          ],
        ),
        const SizedBox(height: 5),
        Text(text, style: TxtStyles.subtitleText(context)),
        const SizedBox(height: 30),
      ],
    );
  }

  List<Widget> codingSkills() {
    return [
      title(context, Txt.codingSkills, Icons.code),
      Align(
        alignment: Alignment.topLeft,
        child: Wrap(
          spacing: 40,
          runSpacing: 10,
          children: mySkills.map((s) => SkillRow(s, titleWidth: 80)).toList(),
        ),
      ),
    ];
  }
}
