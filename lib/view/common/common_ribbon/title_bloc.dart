import 'package:my_cv/core/libs.dart';

class TitleBloc extends StatelessWidget {
  final String title;
  const TitleBloc(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConst.titleblocHeight,
      width: AppConst.titleblocWidth,
      margin: const EdgeInsets.fromLTRB(0, 30, 0, 20),
      color: ext(context).ribbonBloc,
      child: Center(
        child: Text(
          title.tr().toUpperCase(),
          style: TxtStyles.titleBloc,
        ),
      ),
    );
  }
}
