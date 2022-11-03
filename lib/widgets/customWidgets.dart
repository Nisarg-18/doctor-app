import 'package:flutter/material.dart';

Widget verticalSpace(height) {
  return SizedBox(
    height: height,
  );
}

Widget horizontalSpace(width) {
  return SizedBox(
    width: width,
  );
}

Widget standardButton(
    VoidCallback onPressedFunction, customWidth, customHeight, text) {
  return ElevatedButton(
      onPressed: onPressedFunction,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(
          customWidth * 0.3,
          customHeight * 0.06,
        ),
        elevation: 0,
        primary: const Color(0xFFF9AF80),
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 10,
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ));
}
