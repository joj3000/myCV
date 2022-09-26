import '../../libs.dart';

class Ribbon extends StatelessWidget {
  const Ribbon({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MyConst.leftRibbonWidth,
      child: Column(
        children: [
          topProfile(context),
          bottomProfile(context),
        ],
      ),
    );
  }

  Widget topProfile(BuildContext context) {
    return Container(
      color: ext(context).background,
      width: MyConst.leftRibbonWidth,
      child: Column(
        children: [
          const SizedBox(height: 50),
          const CircleAvatar(
            radius: 50,
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

  Widget bottomProfile(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            children: [
              Expanded(
                child: Container(color: ext(context).ribbonBackground),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                infos(context),
                skills(context, Txt.languages, myLanguages),
                skills(context, Txt.otherSkills, myOtherSkills),
                hobbies(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget titleBloc(String title, BuildContext context) {
    return Container(
      height: MyConst.titleblocHeight,
      width: MyConst.titleblocWidth,
      margin: const EdgeInsets.fromLTRB(0, 30, 0, 20),
      color: ext(context).ribbonBloc,
      child: Center(
        child: Text(
          title.toUpperCase(),
          style: TxtStyles.titleBloc,
        ),
      ),
    );
  }

  Widget infos(BuildContext context) {
    return Column(
      children: [
        titleBloc(Txt.infos, context),
        ...myInfos.map((i) => infosRow(context, i)).toList()
      ],
    );
  }

  Widget infosRow(BuildContext context, Info info) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, left: 15),
      child: Row(
        children: [
          if (info.icon is String)
            SvgPicture.asset(info.icon,
                color: ext(context).ribbonText, width: MyConst.profileIconSize),
          if (info.icon is! String)
            Icon(info.icon,
                color: ext(context).ribbonText, size: MyConst.profileIconSize),
          const SizedBox(width: 10),
          Text(
            info.text,
            style: TxtStyles.profileText(context),
          )
        ],
      ),
    );
  }

  Widget skills(BuildContext context, String title, List<Skill> skills) {
    return Column(
      children: [
        titleBloc(title, context),
        ...skills
            .map((l) => Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: SkillRow(l, isRightPart: false),
                ))
            .toList()
      ],
    );
  }

  Widget hobbies(BuildContext context) {
    return Column(
      children: [
        titleBloc(Txt.hobbies, context),
        Wrap(
          spacing: 10,
          runSpacing: 5,
          children: LstTools.addComas(myHobbies)
              .map((h) => Text(h, style: TxtStyles.hobbyTxt(context)))
              .toList(),
        ),
      ],
    );
  }
}
