import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color deepOrange50 = fromHex('#f7e6e6');

  static Color blueA400 = fromHex('#3570eb');

  static Color blueA700 = fromHex('#2d68e4');

  static Color blueGray90014 = fromHex('#14263f33');

  static Color blueA100 = fromHex('#8eaef1');

  static Color blueA200 = fromHex('#598df9');

  static Color purpleA20001 = fromHex('#d959f9');

  static Color gray50 = fromHex('#f8fafe');

  static Color whiteA700Cc = fromHex('#ccffffff');

  static Color black900 = fromHex('#000000');

  static Color blueGray800 = fromHex('#2a4262');

  static Color blueGray90002 = fromHex('#320546');

  static Color blueGray700 = fromHex('#4f5663');

  static Color indigo200C1 = fromHex('#c194abd5');

  static Color blueGray90001 = fromHex('#252e4b');

  static Color purpleA200 = fromHex('#d25dfa');

  static Color blueGray900 = fromHex('#313131');

  static Color black9004c = fromHex('#4c000000');

  static Color whiteA7004c = fromHex('#4cffffff');

  static Color whiteA7002b = fromHex('#2bffffff');

  static Color gray700 = fromHex('#6a515e');

  static Color tealA40001 = fromHex('#23d99d');

  static Color blueGray200 = fromHex('#aeb3c2');

  static Color gray400 = fromHex('#d6bcca');

  static Color blueGray100 = fromHex('#d2d2d2');

  static Color gray500 = fromHex('#a1a1a1');

  static Color indigo50B5 = fromHex('#b5e7edfa');

  static Color gray800 = fromHex('#472556');

  static Color gray900 = fromHex('#1c162e');

  static Color gray90001 = fromHex('#140f26');

  static Color blueGray90003 = fromHex('#2c2556');

  static Color purpleA20099 = fromHex('#99da5afa');

  static Color gray80014 = fromHex('#14404040');

  static Color lightBlue50 = fromHex('#e5f7ff');

  static Color deepPurpleA2007f = fromHex('#7f7d64ff');

  static Color blue50 = fromHex('#dde7fc');

  static Color blueA40099 = fromHex('#993570ec');

  static Color tealA400 = fromHex('#1ad5ad');

  static Color gray100 = fromHex('#fcf4f5');

  static Color indigo300 = fromHex('#747fe4');

  static Color indigo200 = fromHex('#9cb1d8');

  static Color gray40001 = fromHex('#c6c4ca');

  static Color bluegray400 = fromHex('#888888');

  static Color gray10001 = fromHex('#f0f4f4');

  static Color blue400 = fromHex('#50a0ff');

  static Color whiteA700 = fromHex('#ffffff');

  static Color blueGray70001 = fromHex('#3b516e');

  static Color cyan400 = fromHex('#24cdd8');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
