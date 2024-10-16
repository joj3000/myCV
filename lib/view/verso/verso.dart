import 'package:my_cv/core/libs.dart';

class Verso extends StatefulWidget {
  const Verso({super.key});

  @override
  State<Verso> createState() => _VersoState();
}

class _VersoState extends State<Verso> {
  @override
  Widget build(BuildContext context) {
    return const MySizer(
      mobileChild: VersoMobile(),
      tabletChild: VersoMobile(),
      webChild: VersoWeb(),
    );
  }
}
