import '../../../../libs.dart';

class CompanyProject extends ConsumerWidget {
  final String company;
  final String project;
  final bool paddingTop;
  const CompanyProject(
    this.company,
    this.project, {
    super.key,
    this.paddingTop = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, paddingTop ? 15 : 5, 0, 0),
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
                text: '$company : ',
                style: TxtStyles.subtitleBoldText(context)),
            TextSpan(text: project),
          ],
        ),
        style: TxtStyles.subtitleText(context),
      ),
    );
  }
}
