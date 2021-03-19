import 'package:flame/sprite.dart';
import 'package:flutter/material.dart';
import 'package:langaw/game/componentes/fly_component.dart';
import 'package:langaw/game/langaw_game.dart';
class HouseFly extends Fly {
  HouseFly(LangawGame game, double x, double y) : super(game) {
    flySprites = [];
    flySprites.add(Sprite('flies/house-fly-1.png'));
    flySprites.add(Sprite('flies/house-fly-2.png'));
    deadSprite = Sprite('flies/house-fly-dead.png');
  }
}

class DroolerFly extends Fly {
  DroolerFly(LangawGame game, double x, double y) : super(game) {
    flySprites = [];
    flySprites.add(Sprite('flies/drooler-fly-1.png'));
    flySprites.add(Sprite('flies/drooler-fly-2.png'));
    deadSprite = Sprite('flies/drooler-fly-dead.png');
  }
}

class AgileFly extends Fly {
  AgileFly(LangawGame game, double x, double y) : super(game) {
    flySprites = [];
    flySprites.add(Sprite('flies/agile-fly-1.png'));
    flySprites.add(Sprite('flies/agile-fly-2.png'));
    deadSprite = Sprite('flies/agile-fly-dead.png');
  }
}

class MachoFly extends Fly {
  MachoFly(LangawGame game, double x, double y) : super(game) {
    flySprites = [];
    flySprites.add(Sprite('flies/macho-fly-1.png'));
    flySprites.add(Sprite('flies/macho-fly-2.png'));
    deadSprite = Sprite('flies/macho-fly-dead.png');
  }
}

class HungryFly extends Fly {
  HungryFly(LangawGame game, double x, double y) : super(game) {
    flySprites = [];
    flySprites.add(Sprite('flies/hungry-fly-1.png'));
    flySprites.add(Sprite('flies/hungry-fly-2.png'));
    deadSprite = Sprite('flies/hungry-fly-dead.png');
    flyRect = Rect.fromLTWH(x, y, game.tileSize * 1.65, game.tileSize * 1.65);
  }
}
