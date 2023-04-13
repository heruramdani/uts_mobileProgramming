import 'package:flutter/material.dart';
import 'package:uts_flutter/ui/pages/contoh.dart';
import '../../shared/theme.dart';

class HomePage extends StatelessWidget {
  final bool isSelected;
  const HomePage({
    Key? key,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return Contoh();
    }

    Widget custombuttonnavigation() {
      return Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: kWhiteColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(Icons.home),
                    onPressed: () {},
                    color: isSelected ? kPrimaryColor : kBlue2Color,
                  ),
                  IconButton(
                    icon: Icon(Icons.person),
                    onPressed: () {
                      Navigator.pushNamed(context, '/Profile-page');
                    },
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20, // Sesuaikan dengan posisi vertikal yang diinginkan
            left: (MediaQuery.of(context).size.width - 56) /
                2, // Mengatur posisi horizontal FAB di tengah-tengah
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(
                    255, 255, 90, 145), // Menambahkan warna background merah
                shape: BoxShape.circle,
              ),
              child: FloatingActionButton(
                onPressed: () {
                  // Code to execute on FAB press
                },
                child: Icon(Icons.favorite),
                backgroundColor: Colors.transparent,
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Stack(
        children: [
          buildContent(),
          custombuttonnavigation(),
        ],
      ),
    );
  }
}
