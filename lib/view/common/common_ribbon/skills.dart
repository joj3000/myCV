import 'package:my_cv/core/libs.dart';

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
        for (final skill in skills)
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: SkillRow(skill,
                isRightPart: false,
                txtToDotDist: isMobile ? 10 : null,
                fontSize: fontSize),
          )
      ],
    );
  }
}
