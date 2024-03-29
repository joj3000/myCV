import '../../../../libs.dart';

class Subtitle extends StatelessWidget {
  final EdXpInfos info;
  const Subtitle(this.info, {super.key});

  @override
  Widget build(BuildContext context) {
    final locale = context.locale.toString();
    final start = info.start?.format('MMM yyyy', locale);
    final end =
        info.end == null ? Txt.now.tr() : info.end!.format('MMM yyyy', locale);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.arrow_forward_ios_rounded, size: 13),
            const SizedBox(width: 10),
            Text(info.title.tr(), style: TxtStyles.subtitle(context)),
            const Spacer(),
            if (info.start != null && info.end != null)
              Text('$start - $end', style: TxtStyles.subtitleDateGrey(context)),
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
