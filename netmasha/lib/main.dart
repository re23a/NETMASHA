import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netmasha/blocs/auth_bloc/auth_bloc.dart';
import 'package:netmasha/blocs/onbaording_bloc/onbaording_bloc.dart';
import 'package:netmasha/screens/splash_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: MultiBlocProvider(
        providers: [
          BlocProvider<OnbaordingBloc>(
              create: (BuildContext context) => OnbaordingBloc()),
          BlocProvider<AuthBloc>(create: (BuildContext context) => AuthBloc()),
        ],
        child: MaterialApp(
            theme: ThemeData(fontFamily: "IBM Plex Sans Arabic"),
            locale: const Locale('ar'),
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate
            ],
            supportedLocales: const [Locale('ar')],
            debugShowCheckedModeBanner: false,
            home: const SplashScreen()),
      ),
    );
  }
}
