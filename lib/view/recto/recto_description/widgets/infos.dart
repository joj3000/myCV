import 'package:my_cv/core/libs.dart';

class Infos extends StatelessWidget {
  const Infos({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleBloc(Txt.infos),
        ...AppConst.myInfos.map((i) => InfosRow(i)),
      ],
    );
  }
}

class InfosRow extends StatelessWidget {
  final Info info;
  const InfosRow(this.info, {super.key});

  @override
  Widget build(BuildContext context) {
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
                size: AppConst.profileIconSize,
              ),
            if (info.icon is! String)
              Icon(
                info.icon,
                color: ext(context).ribbonText,
                size: AppConst.profileIconSize,
              ),
            const SizedBox(width: 10),
            MouseRegion(
              cursor: info.type != InfoType.none ? SystemMouseCursors.click : SystemMouseCursors.basic,
              child: GestureDetector(
                onTap: info.type != InfoType.none ? () => MyFunctions.clickable(context, info) : null,
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
