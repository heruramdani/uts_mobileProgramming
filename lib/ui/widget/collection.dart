import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class Collection extends StatelessWidget {
  final String title;
  final String imageUrl;
  final Color color;

  const Collection(
      {Key? key,
      required this.title,
      required this.imageUrl,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 135,
        height: 100,
        margin: EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 15),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Warna bayangan
              spreadRadius: 2, // Jarak bayangan horizontal
              blurRadius: 5, // Tingkat kebluran bayangan
              offset: Offset(0, 2), // Offset bayangan (horizontal, vertikal)
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40,
              height: 40,
              margin: EdgeInsets.only(
                left: 15,
                top: 15,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imageUrl,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: black2TextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
