import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  final String? text;

  final Widget? widget;

  final Function? onTap;

  final Color? color;

  final TextStyle? style;
  const CustomButtons(
      {Key? key, this.text, this.color, this.style, this.onTap, this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!();
      },
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(42),
        ),
        child: widget ??
            Text(
              text!,
              style: style,
            ),
      ),
    );
  }
}
