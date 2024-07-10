import 'package:flutter/material.dart';

class TColor {
  static Color get primary => const Color(0xff3d824b);
  static Color get secondary => const Color(0xff3369ff);
  static Color get primaryText => const Color(0xff282f39);
  static Color get primaryTextW => const Color(0xffffffff);
  static Color get secondaryText => const Color(0xff7f7f7f);
  static Color get placeholder => const Color(0xffbbbbbb);
  static Color get lightGray => const Color(0xffdadee3);
  static Color get bg => Colors.white;
}

extension HexColor on Color {
  /// Hàm chuyển đổi một chuỗi mã màu hex thành một đối tượng Color
  ///
  /// @param String hexString: nhận một chuỗi mã màu hex
  ///
  /// Ví dụ:
  /// Nếu bạn gọi hàm fromHex với đầu vào là "#FFAABB", chuỗi này sẽ được xử lý như sau:
  ///
  /// hexString.length là 7, do đó 'ff' sẽ được thêm vào buffer.
  /// 
  /// Ký tự # sẽ được loại bỏ, và "FFAABB" sẽ được ghép vào buffer.
  /// 
  /// buffer.toString() sẽ trở thành "ffAABB".
  /// 
  /// Cuối cùng, "ffAABB" sẽ được chuyển đổi thành một số nguyên dạng hexa, và từ đó một đối tượng Color sẽ được tạo ra với giá trị tương ứng.
  /// 
  /// =>rgb(255,170,187)
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    // kiểm tra độ dài của chuổi mã màu hex
    if (hexString.length == 6 || hexString.length == 7) {
      // thêm ff vào đầu
      buffer.write('ff');
    }
    // xóa đi ký tự '#' và ghép chuỗi
    buffer.write(hexString.replaceFirst('#', ''));
    // chuyển đổi chuỗi hex sang đối tượng Color
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? "#" : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
