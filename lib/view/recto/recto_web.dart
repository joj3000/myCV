import 'package:my_cv/core/libs.dart';

class RectoWeb extends StatelessWidget {
  const RectoWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        elevation: 70,
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: AppConst.maxCvWidth, maxHeight: AppConst.maxCvHeight),
            child: ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
              child: const Row(
                children: [
                  WebRibbon(),
                  RectoDescrption(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
