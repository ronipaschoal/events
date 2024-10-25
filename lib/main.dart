import 'package:events/cubits/app/app_cubit.dart';
import 'package:events/routes.dart';
import 'package:events/ui/ev_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => AppCubit(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      buildWhen: (previous, current) => previous.themeMode != current.themeMode,
      builder: (context, state) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Flutter event app',
          theme: EvTheme.lightTheme,
          darkTheme: EvTheme.darkTheme,
          themeMode: state.themeMode,
          routerDelegate: Routes.config.routerDelegate,
          routeInformationParser: Routes.config.routeInformationParser,
          routeInformationProvider: Routes.config.routeInformationProvider,
        );
      },
    );
  }
}
