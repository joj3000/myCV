import 'package:my_cv/core/libs.dart';

class VersoDescrption extends ConsumerWidget {
  const VersoDescrption({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final extension = Theme.of(context).extension<AppColors>()!;
    return Expanded(
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(50, 50, 50, 20),
            color: extension.background,
            child: const Align(
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CodingSkills(),
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
            right: 10,
            top: 10,
            child: TopButtons(),
          ),
        ],
      ),
    );
  }
}
