import '../../../libs.dart';

class Infos extends StatelessWidget {
  const Infos({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleBloc(Txt.infos),
        ...myInfos.map((i) => infosRow(context, i)).toList()
      ],
    );
  }

  Widget infosRow(BuildContext context, Info info) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, left: 15),
      child: SizedBox(
        width: 180,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (info.icon is FontAwesomeIcons)
              FaIcon(
                FontAwesomeIcons.github,
                color: ext(context).ribbonText,
                size: MyConst.profileIconSize,
              ),
            if (info.icon is! String)
              Icon(
                info.icon,
                color: ext(context).ribbonText,
                size: MyConst.profileIconSize,
              ),
            const SizedBox(width: 10),
            MouseRegion(
              cursor: info.type != InfoType.none
                  ? SystemMouseCursors.click
                  : SystemMouseCursors.basic,
              child: GestureDetector(
                onTap: info.type != InfoType.none
                    ? () => MyFunctions.clickable(context, info)
                    : null,
                child: Text(
                  info.text.tr(),
                  style: TxtStyles.profileText(context),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
