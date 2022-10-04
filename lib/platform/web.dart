import '../libs.dart';

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
                maxWidth: MyConst.maxCvWidth, maxHeight: MyConst.maxCvHeight),
            child: ScrollConfiguration(
              behavior:
                  ScrollConfiguration.of(context).copyWith(scrollbars: false),
              child: Row(
                children: const [
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
