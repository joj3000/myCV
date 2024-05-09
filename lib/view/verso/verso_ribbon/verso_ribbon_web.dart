import 'package:my_cv/core/libs.dart';

class VersoRibbonWeb extends StatelessWidget {
  const VersoRibbonWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppConst.leftRibbonWidth,
      color: ext(context).ribbonBackground,
      child: const Column(children: []),
    );
  }
}
