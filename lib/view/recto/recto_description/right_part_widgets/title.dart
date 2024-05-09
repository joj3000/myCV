import 'package:my_cv/core/libs.dart';

class MyTitle extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isTop;
  const MyTitle(this.title, this.icon, {this.isTop = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      padding: EdgeInsets.fromLTRB(0, isTop ? 30 : 50, 0, 0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: ext(context).circleAvatar,
                radius: 15,
                child: Icon(
                  icon,
                  size: AppConst.titleIconSize,
                  color: ext(context).text,
                ),
              ),
              const SizedBox(width: 15),
              Text(title.tr().toUpperCase(),
                  style: TxtStyles.rightPartTitle(context)),
            ],
          ),
          Divider(
            endIndent: 50,
            indent: 45,
            height: 10,
            thickness: 2,
            color: ext(context).divider,
          ),
        ],
      ),
    );
  }
}
