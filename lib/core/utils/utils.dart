import 'package:flutter/material.dart';

mixin Utils {
  static unfocus() => FocusManager.instance.primaryFocus?.unfocus();
}
