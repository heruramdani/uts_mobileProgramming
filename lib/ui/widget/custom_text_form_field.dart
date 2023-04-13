import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obsecureText;
  final IconData? icon;

  const CustomTextField({
    Key? key,
    required this.title,
    required this.hintText,
    this.obsecureText = false,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
          ),
          SizedBox(
            height: 6,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: hintText,
              prefixIcon: icon != null ? Icon(icon) : null,
            ),
          ),
        ],
      ),
    );
  }
}
