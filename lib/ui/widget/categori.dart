import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class Categori extends StatelessWidget {
  final String title;
  final String imageUrl;

  const Categori({
    Key? key,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 110,
        height: 90,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(
          right: 20,
          top: 3,
          bottom: 3,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kWhiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3), // Warna bayangan
              spreadRadius: 2, // Jarak bayangan horizontal
              blurRadius: 5, // Tingkat kebluran bayangan
              offset: Offset(0, 2), // Offset bayangan (horizontal, vertikal)
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imageUrl,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
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
                      style: greyTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: medium,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: kGreyColor,
                      size: 15.0,
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
