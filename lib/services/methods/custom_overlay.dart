import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/models/moves_enum.dart';

Future<void> showOverlay(context,
    {required int userMove, required int computerMove}) async {
  OverlayEntry overlayEntry = OverlayEntry(
      builder: (context) => Align(
          alignment: Alignment.centerLeft,
          child: Image.asset(
            "assets/images/${Moves.values[userMove].name}.png",
            height: 120,
            width: 120,
          )));
  Overlay.of(context)!.insert(overlayEntry);
  Timer(const Duration(milliseconds: 300), () => overlayEntry.remove());

  OverlayEntry overlayComputerEntry = OverlayEntry(
      builder: (context) => Align(
          alignment: Alignment.centerRight,
          child: Image.asset(
            "assets/images/${Moves.values[computerMove].name}.png",
            height: 120,
            width: 120,
          )));
  Overlay.of(context)!.insert(overlayComputerEntry);
  Timer(const Duration(milliseconds: 300), () => overlayComputerEntry.remove());
}
