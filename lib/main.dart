import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_menu/lang_provider.dart';
import 'package:restaurant_menu/screens/home_page.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialization(null);
  FlutterNativeSplash.removeAfter(initialization);

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale("uz", "UZ"),
        Locale("ru", "RU"),
        Locale("en", "EN"),
      ],
      fallbackLocale: Locale("uz", "UZ"),
      path: 'assets/translations',
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => LangProvider()),
        ],
        child: MyApp(),
      ),
    ),
  );
}

Future initialization(BuildContext? context) async {
  await Future.delayed(Duration(seconds: 2));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(fontFamily: 'Manrope'),
      home: HomePage(),
    );
  }
}
