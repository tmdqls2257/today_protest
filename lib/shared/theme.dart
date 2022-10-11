// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart' show Get, GetNavigation;

const _gridMargin = 16;
const _gridGutter = 10;
final _singleWidth = (Get.width - 2 * _gridMargin - 3 * _gridGutter) / 4;

enum CustomW { w1, w2, w3, w4 }

final customW = {
  CustomW.w1: _singleWidth,
  CustomW.w2: _singleWidth * 2 + _gridGutter,
  CustomW.w3: _singleWidth * 3 + _gridGutter * 2,
  CustomW.w4: Get.width - 2 * _gridMargin,
};

enum ColorType {
  deepPurple,
  purple,
  orange,
  yellow,
  blue,
  grey,
  lightGrey,
  white,
  white54,
  black,
  red
}

final customColor = {
  ColorType.deepPurple: const Color(0xFF572E66),
  ColorType.grey: const Color(0xFFAAAAAA),
  ColorType.white: const Color(0xFFFFFFFF),
};
