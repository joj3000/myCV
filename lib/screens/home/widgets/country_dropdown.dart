import '../../../libs.dart';

class CountryDropdown extends ConsumerStatefulWidget {
  const CountryDropdown({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CountryDropdownState();
}

class _CountryDropdownState extends ConsumerState<CountryDropdown> {
  String country = 'fr';

  void setFlag(String flag) async {
    print('VAL)CJ=$flag');

    if (flag != country) {
      print('WENT HERE with country=$country, lag=$flag');
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
            print('VAL=$val');
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
