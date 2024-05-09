import 'package:my_cv/core/libs.dart';

class CodingSkills extends StatelessWidget {
  const CodingSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyTitle(Txt.codingSkills, Icons.code),
        const SizedBox(height: 20),
        Align(
          alignment: Alignment.topLeft,
          child: Wrap(
            spacing: 40,
            runSpacing: 10,
            children: AppConst.mySkills
                .map((s) => SkillRow(s, titleWidth: 80))
                .toList(),
          ),
        ),
      ],
    );
  }
}
