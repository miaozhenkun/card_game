import 'dart:io';

import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'klondike_game.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Flame.device.setOrientation(DeviceOrientation.landscapeLeft);
  await Flame.device.fullScreen();
  final game = KlondikeGame();
  runApp(GameWidget(game: game));
}