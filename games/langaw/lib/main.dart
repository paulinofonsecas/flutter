import 'package:flame/game/widget_builder.dart';
import 'package:flutter/material.dart' as material;
import 'package:flame/flame.dart';
import 'package:langaw/game/langaw_game.dart';

void main() async {
  material.WidgetsFlutterBinding.ensureInitialized();
  await Flame.util.fullScreen();
  await Flame.util.setPortraitUpOnly();
  Flame.images.loadAll(<String>[
  'bg/backyard.png',
  'flies/agile-fly-1.png',
  'flies/agile-fly-2.png',
  'flies/agile-fly-dead.png',
  'flies/drooler-fly-1.png',
  'flies/drooler-fly-2.png',
  'flies/drooler-fly-dead.png',
  'flies/house-fly-1.png',
  'flies/house-fly-2.png',
  'flies/house-fly-dead.png',
  'flies/hungry-fly-1.png',
  'flies/hungry-fly-2.png',
  'flies/hungry-fly-dead.png',
  'flies/macho-fly-1.png',
  'flies/macho-fly-2.png',
  'flies/macho-fly-dead.png',
]);
  var myGame = LangawGame();
  material.runApp(myGame.widget);
}
