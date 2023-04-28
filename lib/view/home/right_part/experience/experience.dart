import '../../../../libs.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyTitle(Txt.experience, Icons.work),
        ...AppConst.xp.map((i) => Subtitle(i)).toList(),
        const SizedBox(height: 20)
      ],
    );
  }
}
