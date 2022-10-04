import '../../../libs.dart';

class TopProfile extends StatelessWidget {
  final bool isMobile;
  const TopProfile({super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isMobile ? ext(context).ribbonBackground : ext(context).background,
      width: MyConst.leftRibbonWidth,
      child: Column(
        children: [
          const SizedBox(height: 50),
          const CircleAvatar(
            radius: MyConst.profilePictureRadius,
            backgroundImage: AssetImage(Img.profile),
          ),
          const SizedBox(height: 15),
          Text(Txt.firstName, style: TxtStyles.firstName(context)),
          Text(Txt.lastName, style: TxtStyles.lastName(context)),
          const SizedBox(height: 15),
          Text(Txt.job, style: TxtStyles.job(context)),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
