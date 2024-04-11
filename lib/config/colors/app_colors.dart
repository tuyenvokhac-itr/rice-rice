import 'package:flutter/material.dart';

class AppColors {
  static Color bluePrimary = HexColor.fromHex('#3C82F5');
  static Color blueSecondary = HexColor.fromHex('#2192FF');
  static Color blueTiary = HexColor.fromHex('#2743FD');
  static Color greyBackground = HexColor.fromHex('#F7FBFF');
  static Color character = HexColor.fromHex('#0C0C0D');


  // static Color neutralText800 = HexColor.fromHex('#36322D');
  // static Color character = HexColor.fromHex('#0C0C0D');
  // static Color placeHorseder = HexColor.fromHex('#CFD0D7');
  // static Color greenMain = HexColor.fromHex('#2BAD3B');
  // static Color greenSub = HexColor.fromHex('#92D386');
  // static Color greenSub2 = HexColor.fromHex('#FCFFF2');
  // static Color green2 = HexColor.fromHex('#23C45F');
  // static Color greyBackground = HexColor.fromHex('#F7FBFF');
  // static Color greyHint = HexColor.fromHex('#B9B9B9');
  // static Color grey2 = HexColor.fromHex('#818181');
  // static Color grey3 = HexColor.fromHex('#F8F8F8');
  // static Color grey4 = HexColor.fromHex('#8E8E8E');
  // static Color grey5 = HexColor.fromHex('#9EA5B0');
  // static Color grey6 = HexColor.fromHex('#6C757D');

  // static Color blue2 = HexColor.fromHex('#EEF6FF');
  // static Color shawdow = HexColor.fromHex('#331B39FF');
  // static Color orangeSecondary = HexColor.fromHex('#99F25C05');
  // static Color error = HexColor.fromHex('#EC3D3D');
  // static Color error2 = HexColor.fromHex('#E74C3C');
  // static Color errorLight = HexColor.fromHex('#FAE4E4');
  // static Color orange1 = HexColor.fromHex('#F69212');
  // static Color orange2 = HexColor.fromHex('#F59B28');
  // static Color orange3 = HexColor.fromHex('#F1A13B');
  // static Color orange4 = HexColor.fromHex('#FEF7EC');
}

extension HexColor on Color {
  static Color fromHex(String hex) {
    hex = hex.replaceAll('#', '');
    if (hex.length == 6) {
      hex = "FF$hex"; // 8 char with opacity 100%
    }
    return Color(int.parse(hex, radix: 16));
  }
}
