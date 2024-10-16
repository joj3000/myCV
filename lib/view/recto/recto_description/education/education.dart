import 'package:my_cv/core/libs.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyTitle(Txt.education, Icons.school),
        ...AppConst.education.map((d) => DescriptionBlock(d)),
      ],
    );
  }
}
