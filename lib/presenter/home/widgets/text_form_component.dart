import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormComponent extends StatelessWidget {
  final String label;
  final TextInputType inputType;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  const TextFormComponent({
    super.key,
    required this.label,
    required this.inputType,
    this.inputFormatters,
    this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
        label: Text(label),
      ),
      inputFormatters: inputFormatters,
      keyboardType: inputType,
    );
  }
}
