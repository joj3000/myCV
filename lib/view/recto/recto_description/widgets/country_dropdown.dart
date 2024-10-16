import 'package:my_cv/core/libs.dart';

final countryProvider = StateProvider<String>((ref) => 'fr');

class CountryDropdown extends ConsumerStatefulWidget {
  const CountryDropdown({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CountryDropdownState();
}

class _CountryDropdownState extends ConsumerState<CountryDropdown> {
  void setFlag(String flag) async {
    final String country = ref.read(countryProvider);
    if (flag != country) {
      await context.setLocale(Locale(flag));
      ref.read(countryProvider.notifier).update((state) => flag);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          buttonStyleData: const ButtonStyleData(height: 38, padding: EdgeInsets.zero),
          iconStyleData: const IconStyleData(icon: SizedBox.shrink()),
          value: ref.watch(countryProvider),
          onChanged: (val) {
            setFlag(val!);
          },
          items: [
            DropdownMenuItem(value: 'fr', child: Image.asset(Img.frFlag, width: 38)),
            DropdownMenuItem(value: 'en', child: Image.asset(Img.enFlag, width: 38)),
          ],
        ),
      ),
    );
  }
}
