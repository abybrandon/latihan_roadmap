import 'package:flutter/material.dart';

extension DoubleToSeparatorBox on num {
  // for vertical separator
  Widget get heightBox => SizedBox(
        height: toDouble(),
      );

  // for horizontal separator

  Widget get widthBox => SizedBox(
        width: toDouble(),
      );
}
