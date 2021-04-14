import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobx_test/controller/controller_base.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

class BodyWidget extends StatelessWidget {
  _textField(
      {String labelText,
      Function(String) onChanged,
      String Function() errorText}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        errorText: errorText == null ? null : errorText(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //final controller = Provider.of<Controller>(context);
    final controller = GetIt.I.get<Controller>();
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Observer(builder: (_) {
            return _textField(
              labelText: 'Name',
              onChanged: controller.client.changeName,
              errorText: controller.validateName,
            );
          }),
          SizedBox(height: 20),
          Observer(builder: (_) {
            return _textField(
              labelText: 'Email',
              onChanged: controller.client.changeEmail,
              errorText: controller.validateEmail,
            );
          }),
          SizedBox(height: 50),
          Observer(builder: (_) {
            return ElevatedButton(
              onPressed: controller.isValid ? () {} : null,
              child: Text('Salvar'),
            );
          })
        ],
      ),
    );
  }
}
