import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class TitleText extends StatelessWidget {
  final String title;

  const TitleText({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
        top: 10,
        bottom: 10,
      ),
      child: Text(
        title,
        style: greyTextStyle.copyWith(
          fontSize: 18,
          fontWeight: semibold,
        ),
      ),
    );
  }
}
