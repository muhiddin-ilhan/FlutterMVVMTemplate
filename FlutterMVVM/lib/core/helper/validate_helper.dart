import 'package:flutter/material.dart';
import 'package:mvvm_app/core/components/snack_bar.dart';

class ValidateHelper {
  static bool validatePhoneNumber(BuildContext ctx, String number) {
    if (number.isEmpty) {
      showSnackBar(ctx: ctx, text: "Numara kısmı boş bırakılamaz");
      return false;
    }
    if (number.length != 11) {
      showSnackBar(ctx: ctx, text: "Numaranızı 11 hane olarak giriniz");
      return false;
    }
    if (number[1] == "0") {
      showSnackBar(ctx: ctx, text: "Alan kodu 0 ile başlayamaz");
      return false;
    }
    if (number[0] != "0") {
      showSnackBar(ctx: ctx, text: "Numara 0 ile başlamalı");
      return false;
    }
    if (number.substring(1, 4) == "000") {
      showSnackBar(ctx: ctx, text: "Alan kodunuzu doğru giriniz");
      return false;
    }

    return true;
  }

  static bool validatePassword(BuildContext ctx, String password) {
    if (password.isEmpty) {
      showSnackBar(ctx: ctx, text: "Şifre boş bırakılamaz");
      return false;
    }
    if (password.length < 6) {
      showSnackBar(ctx: ctx, text: "Şifre en az 6 haneli olmalı");
      return false;
    }
    if (password.length > 16) {
      showSnackBar(ctx: ctx, text: "Şifre en fazla 16 haneli olmalı");
      return false;
    }

    return true;
  }

  static bool validateName(BuildContext ctx, String text) {
    if (text.isEmpty) {
      showSnackBar(ctx: ctx, text: "İsim boş bırakılamaz");
      return false;
    }
    if (text.length < 2) {
      showSnackBar(ctx: ctx, text: "Daha uzun isim giriniz");
      return false;
    }
    if (text.length > 20) {
      showSnackBar(ctx: ctx, text: "Daha kısa isim giriniz");
      return false;
    }
    RegExp regExp = RegExp(r'[a-zA-ZıüğşöçIĞÜŞİÖÇ\s]');
    for (int i = 0; i < text.length; i++) {
      if (!regExp.hasMatch(text[i])) {
        showSnackBar(ctx: ctx, text: "Geçerli bir isim giriniz");
        return false;
      }
    }

    return true;
  }

  static bool validateSurname(BuildContext ctx, String text) {
    if (text.isEmpty) {
      showSnackBar(ctx: ctx, text: "Soyisim boş bırakılamaz");
      return false;
    }
    if (text.length < 2) {
      showSnackBar(ctx: ctx, text: "Daha uzun soyisim giriniz");
      return false;
    }
    if (text.length > 20) {
      showSnackBar(ctx: ctx, text: "Daha kısa soyisim giriniz");
      return false;
    }
    RegExp regExp = RegExp(r'[a-zA-ZıüğşöçIĞÜŞİÖÇ]');
    for (int i = 0; i < text.length; i++) {
      if (!regExp.hasMatch(text[i])) {
        showSnackBar(ctx: ctx, text: "Geçerli bir soyisim giriniz");
        return false;
      }
    }

    return true;
  }
}
