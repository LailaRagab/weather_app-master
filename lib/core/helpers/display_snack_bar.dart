import 'package:flutter/material.dart';

void snackBar(
  BuildContext context,
  String text,
) {
  Future.delayed(const Duration(microseconds: 1), () {
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(text),
          duration: const Duration(seconds: 15),
        ),
      );
    }
  });
}
