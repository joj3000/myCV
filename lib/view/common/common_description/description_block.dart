import 'package:my_cv/core/libs.dart';

/// Widget that shows different UI whether it used in "Education" or in "Experiences"
///
/// Contains a title, a subtitle, a date frame, and an icon
class DescriptionBlock extends ConsumerWidget {
  final DescriptionItem item;
  const DescriptionBlock(
    this.item, {
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final title = item.title.tr();
    final description = item.description?.tr();
    final locale = context.locale.toString();
    final start = item.start?.format('MMM y', locale);
    final end = item.end?.format('MMM y', locale);
    final isExpMode = item.mode == ItemMode.experience;
    return Padding(
      padding: EdgeInsets.fromLTRB(0, isExpMode ? 20 : 25, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              if (!isExpMode) ...[
                const Icon(Icons.arrow_forward_ios_rounded, size: 13),
                const SizedBox(width: 10),
              ],
              Text(
                titleFromItemMode(title, item.mode),
                style: titleStyleFromItemMode(context, item.mode),
              ),
              const Spacer(),
              if (start != null && end != null)
                Text(
                  '$start - $end',
                  style: TxtStyles.subtitleDateGrey(context),
                ),
              if (start != null && end == null)
                Text(
                  '${Txt.since.tr()} $start',
                  style: TxtStyles.subtitleDateGrey(context),
                ),
            ],
          ),
          SizedBox(height: isExpMode ? 5 : 10),
          if (description != null)
            Text(
              description,
              style: TxtStyles.subtitleText(context),
            ),
        ],
      ),
    );
  }
}
