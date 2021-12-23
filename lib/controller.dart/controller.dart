import 'package:get/get_state_manager/get_state_manager.dart';

class ControllerHome extends GetxController {
  bool _mudar = false;

  bool get mudar => _mudar;

  List<bool> dataopen = [true, false, false, false];

  // ignore: non_constant_identifier_names
  void buttons_on_of() {
    _mudar = !_mudar;
    update(["mudar"]);
  }

  // ignore: non_constant_identifier_names
  void open_closed_buttom(int posicao) async {
    print("mudando na posicao ${posicao}");
    int i = 0;
    for (i; i < dataopen.length; i++) {
      if (i == posicao) {
        dataopen[i] = true;
      } else {
        dataopen[i] = false;
      }
    }
    print(dataopen);
    update(["abrindo"]);
  }
}
