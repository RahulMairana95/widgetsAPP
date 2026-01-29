import 'package:flutter/material.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/config/theme/app_theme.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      title: 'Flutter Widgets',
      routerConfig: appRouter,///la emjor configuracion de rutas
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectColor: 1).getTheme(),
      //UNA OPCIOON DE RUTAS
      //home: const HomeScreen(),
      /* routes: {
        '/buttons': (context) => const ButtonsScreen(),
        '/cards': (context) => const CardsScreen(),
      }, */
    );
  }
}
