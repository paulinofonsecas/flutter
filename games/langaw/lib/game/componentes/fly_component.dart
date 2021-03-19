import 'package:flame/components/component.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/material.dart';
import 'package:langaw/game/langaw_game.dart';

class Fly extends SpriteComponent {
  final LangawGame game;
  Rect flyRect;
  List<Sprite> flySprites;
  Sprite deadSprite;
  double flyingSpriteIndex = 0;
  Offset targetLocation;
  var isDead = false;
  var isOffScreen = false;
  var flyPaint = Paint()..color = Color(0xff6ab04c);

  double get speed => game.tileSize * 3;

  Fly(this.game);

  @override
  void onMount() {
    flyRect = Rect.fromLTWH(x, y, game.tileSize * 2.025, game.tileSize * 2.025);
    setTargetLocation();
    super.onMount();
  }

  void setTargetLocation() {
    double x = game.rnd.nextDouble() *
        (game.screenSize.width - (game.tileSize * 2.025));
    double y = game.rnd.nextDouble() *
        (game.screenSize.height - (game.tileSize * 2.025));
    targetLocation = Offset(x, y);
  }

  @override
  update(double t) {
    if (isDead) {
      flyRect = flyRect.translate(0, game.tileSize * 12 * t);
      if (flyRect.top > game.screenSize.height) {
        isOffScreen = true;
      }
    } else {
      flyingSpriteIndex += 30 * t;
      if (flyingSpriteIndex >= 2) {
        flyingSpriteIndex -= 2;
      }

      double stepDistance = speed * t;
      Offset toTarget = targetLocation - Offset(flyRect.left, flyRect.top);
      if (stepDistance < toTarget.distance) {
        Offset stepToTarget =
            Offset.fromDirection(toTarget.direction, stepDistance);
        flyRect = flyRect.shift(stepToTarget);
      } else {
        flyRect = flyRect.shift(toTarget);
        setTargetLocation();
      }
    }
    this.update(t);
  }

  @override
  render(Canvas canvas) {
    if (isDead) {
      deadSprite.renderRect(canvas, flyRect);
    } else {
      this.render(canvas);
    }
  }

  onTapDown() async {
    flyPaint.color = Color(0xffff4757);
    isDead = true;
    await Future.delayed(Duration(milliseconds: 600));
    game.spawnFlys();
  }
}
