import 'package:flutter/material.dart';

Widget verificationField(int index) {
  return SizedBox(
    width: 45,
    height: 45,
    child: Builder(
      builder: (context) {
        return TextField(
          maxLength: 1,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(counterText: '', hintText: index.toString()),
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            } else if (value.isEmpty) {
              FocusScope.of(context).previousFocus();
            }
          },
        );
      },
    ),
  );
}
