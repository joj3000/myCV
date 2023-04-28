import '../../../../libs.dart';

class Subtitle extends StatelessWidget {
  final EdXpInfos info;
  const Subtitle(this.info, {super.key});

  @override
  Widget build(BuildContext context) {
    final lang = context.locale.languageCode;
    final isFrench = lang == 'fr';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.arrow_forward_ios_rounded, size: 13),
            const SizedBox(width: 10),
            Text(info.title.tr(), style: TxtStyles.subtitle(context)),
            const Spacer(),
            if (isFrench && info.end == null)
              Text('${Txt.now.tr()} ', style: TxtStyles.subtitleDate(context)),
            Text(info.start.format('MMM yyyy', lang),
                style: TxtStyles.subtitleDate(context)),
            if (!isFrench || info.end != null)
              Text(
                  ' - ${info.end == null ? Txt.now.tr() : info.end!.format('MMM yyyy', lang)}',
                  style: TxtStyles.subtitleDate(context)),
          ],
        ),
        const SizedBox(height: 5),
        if (info.projects.isEmpty)
          Text(info.text.tr(), style: TxtStyles.subtitleText(context)),
        if (info.projects.isNotEmpty) XPSubtitle(info),
        const SizedBox(height: 30),
      ],
    );
  }
}
