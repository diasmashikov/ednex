import 'package:flutter/material.dart';

class ReusableTextFormField extends StatelessWidget {
  final String labelText;
  final ValueChanged<String>? onChanged;
  final Color? backgroundColor;

  ReusableTextFormField({
    required this.labelText,
    this.onChanged,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: backgroundColor,
      ),
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          labelText: labelText,
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(16.0),
        ),
        maxLines: null,
        onChanged: onChanged,
      ),
    );
  }
}
