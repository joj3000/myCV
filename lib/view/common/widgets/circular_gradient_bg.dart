import 'package:my_cv/core/libs.dart';

class CircularGradientBg extends StatelessWidget {
  final Widget child;
  const CircularGradientBg({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            radius: 1,
            colors: [
              ext(context).ribbonBackground!.withOpacity(0.1),
              ext(context).ribbonBackground!.withOpacity(0.60),
            ],
          ),
        ),
        child: child,
      ),
    );
  }
}
