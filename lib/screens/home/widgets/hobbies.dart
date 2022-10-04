import '../../../libs.dart';

class Hobbies extends StatelessWidget {
  final bool isMobile;
  const Hobbies({super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleBloc(Txt.hobbies),
        if (isMobile)
          Column(
            children: LstTools.addComas(myHobbies)
                .map((h) => Text(h, style: TxtStyles.hobbyTxt(context)))
                .toList(),
          ),
        if (!isMobile)
          Wrap(
            spacing: 10,
            runSpacing: 5,
            children: LstTools.addComas(myHobbies)
                .map((h) => Text(h, style: TxtStyles.hobbyTxt(context)))
                .toList(),
          ),
      ],
    );
  }
}
