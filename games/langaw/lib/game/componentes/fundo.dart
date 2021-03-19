import 'package:flame/sprite.dart';
import 'package:flutter/widgets.dart';
import 'package:langaw/game/langaw_game.dart';

class Fundo {
  final LangawGame game;
  Sprite sprite;
  Rect bgRect;

  Fundo(this.game) {
    sprite = Sprite('bg/backyard.png');
    bgRect = Rect.fromLTWH(
      0,
      game.screenSize.height - (game.tileSize * 23),
      game.tileSize * 9,
      game.tileSize * 23,
    );
  }

  render(Canvas canvas) {
    sprite.renderRect(
      canvas,
      bgRect,
    );
  }
}
