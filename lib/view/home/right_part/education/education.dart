import 'package:my_cv/libs.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyTitle(Txt.education, Icons.school),
        ...AppConst.educ.map((i) => Subtitle(i)).toList(),
        const SizedBox(height: 20)
      ],
    );
  }
}
