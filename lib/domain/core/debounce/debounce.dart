import 'dart:async' show Timer;

import 'package:flutter/foundation.dart' show VoidCallback;

/// Debounce the text field
class Debouncer {
  final int milliseconds;
  Timer? _timer;

  Debouncer({required this.milliseconds});

  run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
