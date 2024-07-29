import 'package:flutter/widgets.dart';

class ScreenUtil {
  final BuildContext context;
  late final double height;
  late final double width;

  ScreenUtil(this.context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
  }
}
