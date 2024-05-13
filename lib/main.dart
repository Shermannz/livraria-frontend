import 'package:flutter/material.dart';
import 'package:livraria/detalhes_page.dart';
import 'package:livraria/home_page.dart';
import 'package:livraria/principal_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF008584)),
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (_) => HomePage(),
        "/principal": (_) => PrincipalPage(),
        "/detalhes": (_) => DetalhesPage()
      },
    );
  }
}
