import 'package:my_cv/core/libs.dart';

class RectoMobile extends StatelessWidget {
  const RectoMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          RibbonMobile(),
          DescriptionMobile(),
        ],
      ),
    );
  }
}
