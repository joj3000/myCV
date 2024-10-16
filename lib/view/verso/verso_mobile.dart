import 'package:my_cv/core/libs.dart';

class VersoMobile extends StatelessWidget {
  const VersoMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DecoratedBox(
        decoration: BoxDecoration(color: ext(context).background),
        child: const SizedBox.expand(
          child: Stack(
            children: [
              SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
                child: Column(
                  children: [
                    CodingSkills(),
                  ],
                ),
              ),
              Positioned(
                right: 15,
                top: 15,
                child: TopButtons(isMobile: true, verso: true),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
