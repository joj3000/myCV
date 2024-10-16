import 'package:my_cv/core/libs.dart';

class Recto extends StatefulWidget {
  const Recto({super.key});

  @override
  State<Recto> createState() => _RectoState();
}

class _RectoState extends State<Recto> {
  @override
  Widget build(BuildContext context) {
    return const MySizer(
      mobileChild: RectoMobile(),
      tabletChild: RectoMobile(),
      webChild: RectoWeb(),
    );
  }
}
