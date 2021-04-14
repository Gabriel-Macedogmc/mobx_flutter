import 'package:flutter/material.dart';
import 'package:flutter_mobx_test/controller/controller_base.dart';
import 'package:flutter_mobx_test/pages/home.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

// void main() {
//   GetIt getIt = GetIt.I;
//   getIt.registerSingleton<Controller>(Controller());

//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Controller>(
          create: (_) => Controller(),
        )
      ],
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
