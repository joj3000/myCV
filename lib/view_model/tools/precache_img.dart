import 'package:my_cv/core/libs.dart';

/// Precache images to prevent any flickering right after loading
class PrecacheMyImg {
  static List<String> imgToPrecache = [
    Img.profile,
    Img.frFlag,
    Img.enFlag,
  ];
  static Future load(context) async {
    return Future.wait(
        imgToPrecache.map((i) => precacheImage(Image.asset(i).image, context)));
  }
}

class PrecacheMyImages extends StatefulWidget {
  final Widget child;
  const PrecacheMyImages({super.key, required this.child});

  @override
  State<PrecacheMyImages> createState() => _PrecacheMyImagesState();
}

class _PrecacheMyImagesState extends State<PrecacheMyImages> {
  late Future _future;

  @override
  void initState() {
    super.initState();
    _future = PrecacheMyImg.load(context);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _future,
      builder: (_, snap) {
        if (snap.connectionState == ConnectionState.waiting) {
          return Container(color: Colors.white);
        } else {
          return widget.child;
        }
      },
    );
  }
}
