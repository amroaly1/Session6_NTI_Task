import 'package:flutter/material.dart';

class DefaultTextFormField extends StatelessWidget {
  const DefaultTextFormField({
    super.key,
    this.hintText,
    this.labeText,
    this.icon,
    this.maxLine,
    this.height,
  });
  final String? hintText;
  final String? labeText;
  final Widget? icon;
  final int? maxLine;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: SizedBox(
        height: height,
        child: Center(
          child: TextFormField(
            style: TextStyle(
              fontSize: 15,
              color: Color(0xff24252C),
              fontWeight: FontWeight.w200,
            ),
            maxLines: maxLine,
            decoration: InputDecoration(
              icon: icon,
              contentPadding: EdgeInsets.only(
                top: 15,
              ),
              fillColor: Colors.white,
              filled: true,
              border: outlineBorder(),
              enabledBorder: outlineBorder(),
              focusedBorder: outlineBorder(),
              errorBorder: outlineBorder(),
              labelText: labeText,
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 15,
                color: Color(0xff24252C),
                fontWeight: FontWeight.w200,
              ),
              labelStyle: TextStyle(
                fontSize: 12,
                color: Color(0xff6E6A7C),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder outlineBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    );
  }
}
