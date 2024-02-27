import 'package:my_cv/libs.dart';

class WebVersion extends StatelessWidget {
  const WebVersion({super.key});

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
                  Ribbon(),
                  RightPart(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
