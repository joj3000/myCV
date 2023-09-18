import './libs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await EasyLocalization.ensureInitialized();
  runApp(
    ProviderScope(
      child: EasyLocalization(
        supportedLocales: const [Locale('fr'), Locale('en')],
        startLocale: const Locale('fr'),
        path: 'assets/translations',
        fallbackLocale: const Locale('fr'),
        child: const PrecacheMyImages(child: MyCV()),
      ),
    ),
  );
}

class MyCV extends ConsumerStatefulWidget {
  const MyCV({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyCVState();
}

class _MyCVState extends ConsumerState<MyCV> {
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
      title: Txt.title,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      darkTheme: AppThemes.dark,
      themeMode: ThemeMode.light,
      theme: mode ? AppThemes.dark : AppThemes.light,
      home: const Home(),
    );
  }
}
