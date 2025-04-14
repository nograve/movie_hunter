import 'dart:async';

import 'package:flutter/material.dart';

class Debouncer {
  Debouncer({this.milliseconds = 500});
  final int milliseconds;
  VoidCallback? action;
  Timer? _timer;

  void run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }

  void dispose() {
    _timer?.cancel();
  }
}
