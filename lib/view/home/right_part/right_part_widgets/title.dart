import '../../../../libs.dart';

class MyTitle extends StatelessWidget {
  final String title;
  final IconData icon;
  const MyTitle(this.title, this.icon, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        const SizedBox(height: 30),
      ],
    );
  }
}
