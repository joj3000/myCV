import '../../../libs.dart';

class RightPart extends ConsumerWidget {
  const RightPart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final extension = Theme.of(context).extension<MyColors>()!;
    return Expanded(
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(50, 50, 50, 20),
            color: extension.background,
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  AboutMe(),
                  Education(),
                  Experience(),
                  CodingSkills(),
                ],
              ),
            ),
          ),
          const Positioned(
            right: 10,
            top: 10,
            child: TopButtons(),
          )
        ],
      ),
    );
  }
}
