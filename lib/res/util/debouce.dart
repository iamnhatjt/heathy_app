import 'dart:async';

import 'package:flutter/material.dart';

class Debounce {
  Debounce(this.duration);
  Timer? timer;
  final Duration duration;
  void call(VoidCallback callBack) {
    timer?.cancel();
    timer = Timer(duration, callBack);
  }

  void dispose() {
    timer?.cancel();
  }
}
