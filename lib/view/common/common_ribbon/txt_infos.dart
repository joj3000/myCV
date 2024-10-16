import 'package:my_cv/core/libs.dart';

class TxtInfos extends StatelessWidget {
  final bool isMobile;
  final String title;
  final List<String> txtInfosList;
  const TxtInfos(this.title, this.txtInfosList,
      {super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    final lst = LstTools.addComas(txtInfosList)
        .map((t) => Text(t, style: TxtStyles.hobbyTxt(context)))
        .toList();
    return Column(
      children: [
        TitleBloc(title),
        if (isMobile)
          Column(
            children: lst,
          ),
        if (!isMobile)
          Wrap(
            spacing: 10,
            runSpacing: 5,
            children: lst,
          ),
        const SizedBox(height: 10),
      ],
    );
  }
}
