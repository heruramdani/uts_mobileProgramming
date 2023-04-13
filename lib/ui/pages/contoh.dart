import 'package:flutter/material.dart';
import 'package:uts_flutter/shared/theme.dart';

import '../widget/categori.dart';
import '../widget/hot_item.dart';
import '../widget/title.dart';

class Contoh extends StatelessWidget {
  const Contoh({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,
            centerTitle: false,
            leading: Icon(Icons.menu),
            actions: [
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  // Tindakan ketika ikon search ditekan
                },
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  // Tindakan ketika ikon more_vert ditekan
                },
              ),
            ],
            title: Text('Discover'),
            bottom: AppBar(
              automaticallyImplyLeading: false,
              title: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(10.0), // Menambahkan border radius
                ),
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'What are you looking for ?',
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.camera_alt)),
                  ),
                ),
              ),
            ),
          ),
          // Other Sliver Widgets
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                height: 950,
                color: kBackgroundColor,
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleText(
                      title: 'Category',
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Categori(
                              title: 'plant',
                              imageUrl: 'assets/plant_white_bg.png',
                            ),
                            Categori(
                              title: 'lamp',
                              imageUrl: 'assets/lamp_white_bg.png',
                            ),
                            Categori(
                              title: 'chair',
                              imageUrl: 'assets/chair_white_bg.png',
                            ),
                            Categori(
                              title: 'plant',
                              imageUrl: 'assets/plant_white_bg.png',
                            ),
                            Categori(
                              title: 'lamp',
                              imageUrl: 'assets/lamp_white_bg.png',
                            ),
                            Categori(
                              title: 'chair',
                              imageUrl: 'assets/chair_white_bg.png',
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TitleText(
                      title: 'Hot Item',
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              HotItem(
                                title: 'Cactus',
                                imageUrl: 'assets/favorite_img_4.jpg',
                                price: '\$18',
                                item: 'Cactus',
                                color: kTansparentColor,
                              ),
                              HotItem(
                                title: 'Traditional Chair',
                                imageUrl: 'assets/favorite_img_2.jpg',
                                price: '\$24',
                                item: 'Traditional Chair',
                                color: kWhiteColor,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              HotItem(
                                title: 'Wooden Chair',
                                imageUrl: 'assets/favorite_img_3.jpeg',
                                price: '\$44',
                                item: 'Wooden Chair',
                                color: kTansparentColor,
                              ),
                              HotItem(
                                title: 'Elegant Lamp',
                                imageUrl: 'assets/favorite_img_1.jpg',
                                price: '\$53',
                                item: 'Elegant Lamp',
                                color: kRedColor,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              HotItem(
                                title: 'Beach Beautiful',
                                imageUrl: 'assets/favorite_img_5.jpg',
                                price: '\$36',
                                item: 'Beach Beautiful',
                                color: kTansparentColor,
                              ),
                              HotItem(
                                title: 'Architectural',
                                imageUrl: 'assets/favorite_img_6.jpg',
                                price: '\$30',
                                item: 'Architectural',
                                color: kTansparentColor,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              HotItem(
                                title: 'Cactus',
                                imageUrl: 'assets/favorite_img_4.jpg',
                                price: '\$18',
                                item: 'Cactus',
                                color: kTansparentColor,
                              ),
                              HotItem(
                                title: 'Traditional Chair',
                                imageUrl: 'assets/favorite_img_2.jpg',
                                price: '\$24',
                                item: 'Traditional Chair',
                                color: kWhiteColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
