import '../../../../libs.dart';

class Skills extends StatelessWidget {
  final List<Skill> skills;
  final String title;
  final bool isMobile;
  final double? fontSize;
  const Skills(this.title, this.skills,
      {super.key, this.isMobile = false, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleBloc(title),
        ...skills
            .map((l) => Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: SkillRow(l,
                      isRightPart: false,
                      txtToDotDist: isMobile ? 10 : null,
                      fontSize: fontSize),
                ))
            .toList()
      ],
    );
  }
}
