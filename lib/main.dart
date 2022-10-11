import './libs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ProviderScope(child: MyCV()));
}

class MyCV extends ConsumerWidget {
  const MyCV({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool mode = ref.watch(changeThemeProvider).isNightMode;
    return MaterialApp(
      title: 'Hey, I\'m Joran',
      darkTheme: MyThemes.dark,
      themeMode: ThemeMode.light,
      theme: mode ? MyThemes.dark : MyThemes.light,
      home: const Home(),
    );
  }
}
