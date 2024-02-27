import 'package:my_cv/libs.dart';

class XPSubtitle extends StatelessWidget {
  final EdXpInfos info;
  const XPSubtitle(this.info, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        info.projects.length,
        (i) => CompanyProject(
          info.projects[i],
          paddingTop: i > 0,
        ),
      ),
    );
  }
}
