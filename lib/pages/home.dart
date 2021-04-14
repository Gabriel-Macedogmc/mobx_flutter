import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobx_test/controller/controller_base.dart';
import 'package:flutter_mobx_test/pages/body.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext contex) {
    //final controller = Provider.of<Controller>(contex);
    final controller = GetIt.I.get<Controller>();
    return Scaffold(
      appBar: AppBar(
        title: Observer(builder: (_) {
          return Text(controller.isValid
              ? 'Formulário Validado'
              : 'Formulário não Validado');
        }),
      ),
      body: BodyWidget(),
    );
  }
}
