import 'package:exchange_app_01/exchange_app_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'exchange_app_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (_) => ExchangeAppViewModel(),
        child: const ExchangeAppScreen()
      ),
    );
  }
}
