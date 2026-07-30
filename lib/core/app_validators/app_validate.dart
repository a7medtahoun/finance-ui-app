import 'package:flutter/material.dart';

class AppValidate {
  static final regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  // validateEmail
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter a valid email";
    } else {
      return null;
    }
  }

  // validatePassword

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter your password";
    } else if (value.length < 8) {
      return "Password must be at least 8 characters";
    } else if (!value.contains("@")) {
      return "Password must be at @";
    } else {
      return null;
    }
  }

  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter name";
    }
    return null;
  }

  TextEditingController? passController;
  static String? Function(String? value) Confirm(
    TextEditingController passController,
  ) => (String? value) {
    if (passController.text != value) {
      return "password not confirm";
    } else {
      return null;
    }
  };
}
