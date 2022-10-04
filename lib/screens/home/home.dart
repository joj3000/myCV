import '../../libs.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MySizer(
        mobileChild: MobileVersion(),
        tabletChild: MobileVersion(),
        webChild: WebVersion(),
      ),
    );
  }
}
