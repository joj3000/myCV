import '../../../../libs.dart';

class CompanyProject extends ConsumerWidget {
  final CompanyProj companyProj;
  final bool paddingTop;
  const CompanyProject(
    this.companyProj, {
    super.key,
    this.paddingTop = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final company = companyProj.company.tr();
    final project = companyProj.project.tr();
    final locale = context.locale.toString();
    final start = companyProj.start.format('MMM y', locale);
    final end = companyProj.end.format('MMM y', locale);
    return Padding(
      padding: EdgeInsets.fromLTRB(0, paddingTop ? 15 : 5, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('$company :', style: TxtStyles.subtitleBoldText(context)),
              Text('$start - $end', style: TxtStyles.subtitleDateGrey(context)),
            ],
          ),
          Text(
            project,
            style: TxtStyles.subtitleText(context),
          ),
        ],
      ),
    );
  }
}
