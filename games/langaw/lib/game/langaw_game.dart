import 'dart:math';

import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/gestures.dart';
import 'package:flutter/material.dart';
import 'package:langaw/game/componentes/fly_component.dart';
import 'package:langaw/game/componentes/fundo.dart';

import 'componentes/sub_classes_de_flys/tipos_de_flys.dart';

class LangawGame extends Game with TapDetector {
  Size screenSize;
  double tileSize;
  List<Fly> flies;
  Fundo fundo;
  Random rnd;

  LangawGame() {
    inicializar();
  }

  inicializar() async {
    resize(await Flame.util.initialDimensions());
    flies = [];
    rnd = Random();
    fundo = Fundo(this);
    List.generate(5, (i) => i).forEach((element) => spawnFlys());
  }

  spawnFlys() {
    double x = rnd.nextDouble() * (screenSize.width - tileSize * 2.025);
    double y = rnd.nextDouble() * (screenSize.height - screenSize.height * .25 - tileSize * 2.025);
    switch (rnd.nextInt(5)) {
      case 0:
        flies.add(HouseFly(this, x, y));
        break;
      case 1:
        flies.add(DroolerFly(this, x, y));
        break;
      case 2:
        flies.add(AgileFly(this, x, y));
        break;
      case 3:
        flies.add(MachoFly(this, x, y));
        break;
      case 4:
        flies.add(HungryFly(this, x, y));
        break;
    }
  }

  @override
  update(double t) {
    flies.forEach((fly) => fly.update(t));
    flies.removeWhere((fly) => fly.isOffScreen);
  }

  @override
  render(Canvas canvas) {
    fundo.render(canvas);
    flies.forEach((e) => e.render(canvas));
  }

  @override
  void resize(Size size) {
    screenSize = size;
    tileSize = screenSize.width / 9;
    super.resize(size);
  }

  @override
  void onTapDown(TapDownDetails details) {
    flies.forEach((fly) {
      if (fly.flyRect.contains(details.globalPosition)) {
        fly.onTapDown();
      }
    });
    super.onTapDown(details);
  }
}
