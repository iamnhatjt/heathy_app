import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:heathy_app/res/styles/styles.dart';

class AppInput extends StatelessWidget {
  const AppInput(
      {super.key, this.controller, this.width, this.inputText, this.onChange});

  final TextEditingController? controller;
  final double? width;
  final String? inputText;
  final Function(String)? onChange;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 200,
      child: TextFormField(
        onChanged: onChange,
        initialValue: inputText,
        controller: controller,
        inputFormatters: [
          TextInputFormatter.withFunction((oldValue, newValue) {
            final newString = newValue.text.replaceAll(',', '.');
            final dotCount = newString.split('.').length - 1;
            if (dotCount > 1) {
              return oldValue;
            }
            return newValue.copyWith(text: newString);
          })
        ],
        maxLength: 6,
        keyboardType: TextInputType.number,
        maxLines: 1,
        style: AppStyle.buttonLarge,
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
            counterText: "",
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 8)),
      ),
    );
  }
}
