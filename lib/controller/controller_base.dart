import 'package:flutter_mobx_test/models/client.dart';
import 'package:mobx/mobx.dart';
part 'controller_base.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  final client = Client();

  @computed
  bool get isValid {
    return validateName() == null && validateEmail() == null;
  }

  String validateName() {
    if (client.name == null || client.name.isEmpty) {
      return 'este campo é obrigatório';
    } else if (client.name.length <= 2) {
      return 'seu nome precisa ter mais de 2 caracteres';
    }
    return null;
  }

  String validateEmail() {
    if (client.email == null || client.email.isEmpty) {
      return 'este campo é obrigatório';
    } else if (!client.email.contains('@')) {
      return 'seu email não é valido';
    }
  }
}
