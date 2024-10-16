import 'package:my_cv/core/libs.dart';

/// Skill + dots
class SkillRow extends StatelessWidget {
  final Skill skill;
  final double? titleWidth;
  final bool isRightPart;
  final double? txtToDotDist;
  final double? fontSize;
  const SkillRow(
    this.skill, {
    super.key,
    this.titleWidth = 70,
    this.isRightPart = true,
    this.txtToDotDist,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: titleWidth,

          /// --web-renderer html does not work with AutoSizeText; had to find an other way
          // child: AutoSizeText(
          //   skill.name.toUpperCase(),
          //   minFontSize: 4,
          //   maxLines: 1,
          //   style: TxtStyles.profileLanguageText(context),
          // ),
          child: Text(
            skill.name.tr().toUpperCase(),
            maxLines: 1,
            style: fontSize != null
                ? TxtStyles.profileLanguageText(context).copyWith(fontSize: fontSize)
                : TxtStyles.profileLanguageText(context),
          ),
        ),
        SizedBox(width: txtToDotDist ?? 15),
        DotMark(skill.mark, isRightPart)
      ],
    );
  }
}

class DotMark extends StatelessWidget {
  final int mark;

  final bool isRightPartDot;
  final int max;
  const DotMark(this.mark, this.isRightPartDot, {super.key, this.max = 5});

  @override
  Widget build(BuildContext context) {
    final mrk = mark < 0
        ? 0
        : mark > max
            ? max
            : mark;
    return Row(
      children: List.generate(
        max,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3),
          child: CircleAvatar(radius: 4.5, backgroundColor: getDotColor(context, index + 1 <= mrk, isRightPartDot)),
        ),
      ),
    );
  }

  Color? getDotColor(BuildContext context, bool isActive, bool isRightPart) {
    if (isRightPart) {
      return isActive ? ext(context).rightPartDotActive : ext(context).rightPartDotInactive;
    } else {
      return isActive ? ext(context).ribbonDotActive : ext(context).ribbonDotInactive;
    }
  }
}
