import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget customTextbox({
  Color? textColor,
  Icon? prefixIcon,
  Widget? suffixIcon,
  String? labelText,
  String? errorText,
  bool? obsecureText,
  Function(String text)? onChanged,
  TextEditingController? controller,
  double? borderRadius,
  double? contentPadding,
  double? fontSize,
  double? elevation,
  TextInputAction? textInputAction,
  Function(String value)? onFieldSubmitted,
  TextInputFormatter? textMask,
  TextInputType? inputType,
  bool? enabled,
}) {
  return Material(
    borderRadius: BorderRadius.all(
      Radius.circular(borderRadius ?? 0),
    ),
    elevation: elevation ?? 0,
    child: TextFormField(
      textInputAction: textInputAction ?? TextInputAction.done,
      textAlignVertical: TextAlignVertical.center,
      keyboardType: inputType ?? TextInputType.text,
      obscureText: obsecureText ?? false,
      inputFormatters: textMask != null ? [textMask] : null,
      enabled: enabled ?? true,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: contentPadding ?? 0),
        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 0))),
        errorText: errorText,
        errorStyle: const TextStyle(height: 0, fontSize: 0),
        prefixIcon: prefixIcon,
        prefixIconConstraints: const BoxConstraints(minWidth: 60),
        suffixIcon: suffixIcon,
        suffixIconConstraints: const BoxConstraints(minWidth: 60),
        labelText: labelText,
      ),
      style: TextStyle(color: textColor ?? Colors.black, fontSize: fontSize ?? 18),
      onChanged: onChanged,
      controller: controller,
      onFieldSubmitted: onFieldSubmitted,
    ),
  );
}
