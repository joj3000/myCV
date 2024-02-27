import 'package:my_cv/libs.dart';

String country = 'fr';

class CountryDropdown extends ConsumerStatefulWidget {
  const CountryDropdown({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CountryDropdownState();
}

class _CountryDropdownState extends ConsumerState<CountryDropdown> {
  void setFlag(String flag) async {
    if (flag != country) {
      await context.setLocale(Locale(flag));
      setState(() {
        country = flag;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          buttonHeight: 38,
          icon: const SizedBox.shrink(),
          value: country,
          dropdownPadding: EdgeInsets.zero,
          onChanged: (val) {
            setFlag(val!);
          },
          items: [
            DropdownMenuItem(
                child: Image.asset(Img.frFlag, width: 38), value: 'fr'),
            DropdownMenuItem(
                child: Image.asset(Img.enFlag, width: 38), value: 'en'),
          ],
        ),
      ),
    );
  }
}
