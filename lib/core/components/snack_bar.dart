import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showSnackBar({required BuildContext ctx, required String text, Color? bgColor, Color? textColor}) {
  ScaffoldMessenger.of(ctx).showSnackBar(
    SnackBar(
      content: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: textColor ?? Colors.white),
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: bgColor ?? Colors.blue.shade800,
      elevation: 5,
      action: SnackBarAction(
        label: "Kapat",
        onPressed: () {},
        textColor: Colors.white24,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );
}
