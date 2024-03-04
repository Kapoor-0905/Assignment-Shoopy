import 'package:crezam_task/utils/colors.dart';
import 'package:crezam_task/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final void Function(String) onChanged;
  final int? maxLines;
  const CustomTextField(
      {super.key,
      required this.hintText,
      required this.onChanged,
      this.maxLines});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: primaryColor.withOpacity(0.1)),
      child: TextField(
        onChanged: widget.onChanged,
        minLines: 1,
        maxLines: widget.maxLines ?? 1,
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        style: normalText(fontSize: 14),
        decoration: textFieldInput(hintText: widget.hintText),
      ),
    );
  }
}
