import 'package:my_cv/core/libs.dart';

class RibbonTopProfile extends StatelessWidget {
  final bool isMobile;
  const RibbonTopProfile({super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isMobile ? ext(context).ribbonBackground : ext(context).background,
      width: AppConst.leftRibbonWidth,
      child: Column(
        children: [
          const SizedBox(height: 50),
          ClipOval(
              child: Image.asset(
            Img.profile,
            height: !isMobile
                ? AppConst.profilePictureRadius
                : AppConst.profilePictureRadiusMobile,
          )),
          const SizedBox(height: 15),
          Text(Txt.firstName.tr(), style: TxtStyles.firstName(context)),
          Text(Txt.lastName.tr(), style: TxtStyles.lastName(context)),
          const SizedBox(height: 15),
          Text(Txt.job.tr(), style: TxtStyles.job(context)),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
