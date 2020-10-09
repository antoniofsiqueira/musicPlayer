import 'package:mobx/mobx.dart';

part 'player_controller.g.dart';

class PlayerController = _PlayerControllerBase with _$PlayerController;

abstract class _PlayerControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
