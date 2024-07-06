import 'package:flutter/material.dart';
import 'package:ticket_app/base/resource/styles/app_styles.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String name;
  final Icon prefixIcon;
  final bool obsecureText;
  final TextInputType inputType;

  const CustomTextField(
      {super.key,
      required this.controller,
      required this.name,
      required this.prefixIcon,
      this.obsecureText = false,
      this.inputType = TextInputType.text});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();

    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextField(
        focusNode: _focusNode,
        autofocus: false,
        controller: widget.controller,
        enabled: true,
        keyboardType: widget.inputType,
        obscureText: widget.obsecureText,
        decoration: InputDecoration(
            prefixIcon: widget.prefixIcon,
            isDense: true,
            labelText: widget.name,
            border: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: AppStyles.disabledColor)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppStyles.primaryColor),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppStyles.primaryColor),
                borderRadius: const BorderRadius.all(Radius.circular(20)))),
      ),
    );
  }
}
