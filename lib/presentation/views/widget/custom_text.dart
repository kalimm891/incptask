import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final TextStyle? style;
  const CustomText({super.key, this.text, this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: style,
    );
  }
}
