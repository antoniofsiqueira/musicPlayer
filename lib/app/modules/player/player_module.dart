import 'package:player_music/app/modules/player/player_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:player_music/app/modules/player/player_page.dart';

class PlayerModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PlayerController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => PlayerPage(url: args.data)),
      ];

  static Inject get to => Inject<PlayerModule>.of();
}
