import 'package:my_cv/core/libs.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyTitle(Txt.experience, Icons.work),
        ...AppConst.experiences.map((d) => DescriptionBlock(d)),
      ],
    );
  }
}
