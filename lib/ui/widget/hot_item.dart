import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class HotItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String item;
  final String price;
  final Color color;

  const HotItem(
      {Key? key,
      required this.title,
      required this.imageUrl,
      required this.item,
      required this.price,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 150,
        height: 150,
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kWhiteColor,
        ),
        child: Stack(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(
                    imageUrl,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.5),
                          Colors.black.withOpacity(0.5),
                        ]),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 10, bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item,
                        style: whiteTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        price,
                        style: whiteTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: color,
                          size: 15.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
