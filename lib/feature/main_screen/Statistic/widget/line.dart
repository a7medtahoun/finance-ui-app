import 'package:dotted_line/dotted_line.dart';
import 'package:finance_app_ui/core/styling/app_color.dart';
import 'package:flutter/material.dart';

class LineWidget extends StatelessWidget {
  const LineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedLine(dashLength: 3, dashGapLength: 6,
    dashColor: AppColor.secondaryColor,);
  }
}
