// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CommonCard extends StatefulWidget {
  Color? color;

  Widget? leading;
  Widget? trailing;
  Widget? title;
  Widget? subTitle;
  EdgeInsetsGeometry? margin;
  CommonCard(
      {Key? key,
      this.color,
      this.leading,
      this.subTitle,
      this.title,
      this.trailing,
      this.margin})
      : super(key: key);

  @override
  State<CommonCard> createState() => _CommonCardState();
}

class _CommonCardState extends State<CommonCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: widget.margin,
      color: widget.color,
      child: ListTile(
        leading: widget.leading,
        trailing: widget.trailing,
        title: widget.title,
        subtitle: widget.subTitle,
      ),
    );
  }
}
