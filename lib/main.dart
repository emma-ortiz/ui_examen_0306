import 'package:flutter/material.dart';
import 'mispantallas/inicio.dart';
import 'mispantallas/pantalla2.dart';
import 'mispantallas/pantalla3.dart';

void main() {
  runApp(const MiFruteriaApp());
}

class MiFruteriaApp extends StatelessWidget {
  const MiFruteriaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Frutería Emma',
      // Navegación por rutas nombradas exclusivamente
      initialRoute: '/',
      routes: {
        '/': (context) => const Inicio(),
        '/pantalla2': (context) => const Pantalla2(),
        '/pantalla3': (context) => const Pantalla3(),
      },
    );
  }
}