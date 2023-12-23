import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider<OnbaordingBloc>(
            create: (BuildContext context) => OnbaordingBloc()),
      ],
      child: const MaterialApp(
          locale: Locale('ar'),
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate
          ],
          supportedLocales: [Locale('ar')],
          debugShowCheckedModeBanner: false,
          home: SplashScreen()),
    );
  }
}
