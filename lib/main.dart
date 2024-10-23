import 'package:flip_card/flip_card.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'package:my_cv/core/libs.dart';
import 'package:my_cv/view/common/widgets/circular_gradient_bg.dart';
import 'package:my_cv/view/verso/verso.dart';

GlobalKey<FlipCardState> flipKey = GlobalKey<FlipCardState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FlutterNativeSplash.remove();
  EasyLocalization.logger.enableBuildModes = [];
  setPathUrlStrategy();
  FlutterNativeSplash.remove();
  runApp(
    ProviderScope(
      child: EasyLocalization(
        supportedLocales: const [Locale('fr'), Locale('en')],
        startLocale: const Locale('fr'),
        path: 'assets/translations',
        fallbackLocale: const Locale('fr'),
        child: const PrecacheMyImages(child: MyApp()),
      ),
    ),
  );
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyCVState();
}

class _MyCVState extends ConsumerState<MyApp> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.setLocale(const Locale('fr'));
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool mode = ref.watch(changeThemeProvider).isNightMode;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Txt.title,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      darkTheme: AppThemes.dark,
      themeMode: ThemeMode.light,
      theme: mode ? AppThemes.dark : AppThemes.light,
      home: CircularGradientBg(
        child: FlipCard(
          key: flipKey,
          flipOnTouch: false,
          front: const Recto(),
          back: const Verso(),
        ),
      ),
    );
  }
}
