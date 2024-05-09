import 'package:my_cv/core/libs.dart';
import 'package:my_cv/view/verso/verso_description/verso_description.dart';

class VersoWeb extends StatelessWidget {
  const VersoWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        elevation: 70,
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
                maxWidth: AppConst.maxCvWidth, maxHeight: AppConst.maxCvHeight),
            child: ScrollConfiguration(
              behavior:
                  ScrollConfiguration.of(context).copyWith(scrollbars: false),
              child: const Row(
                children: [
                  VersoRibbonWeb(),
                  VersoDescrption(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
