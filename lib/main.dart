
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:tiktok_clone/Locale/languages/locale.dart';
import 'package:tiktok_clone/routes/routes.dart';
import 'package:tiktok_clone/theme/style.dart';

import 'BottomNavigation/MyProfile/language_page.dart';
import 'Locale/languages/language_cubit.dart';


void main() async {
  runApp(Phoenix(

      child: BlocProvider(
        create: (context) => LanguageCubit(),
        child: HomePage(),
      )));
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, Locale>(
      builder: (context, locale) => MaterialApp(
        localizationsDelegates: const [
          AppLocalizationsDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
           Locale('en'),
           Locale('ar'),
           Locale('id'),
           Locale('fr'),
           Locale('pt'),
           Locale('es'),
           Locale('it'),
           Locale('sw'),
           Locale('tr'),
           Locale('de'),
           Locale('ro'),
        ],
        theme: appTheme,
        locale: locale,
        home: ChangeLanguagePage(),
        routes: PageRoutes().routes(),
      ),
    );
  }
}
