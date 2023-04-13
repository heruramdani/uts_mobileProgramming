import 'package:flutter/material.dart';
import 'package:uts_flutter/ui/pages/profile.dart';
import '../../shared/theme.dart';

class ProfilePage extends StatelessWidget {
  final bool isSelected;
  const ProfilePage({
    Key? key,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return Profile();
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
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset:
                        Offset(0, 2), // Offset bayangan (horizontal, vertikal)
                  ),
                ],
                color: kWhiteColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      Navigator.pushNamed(context, '/Home-page');
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.person),
                    onPressed: () {},
                    color: isSelected ? kPrimaryColor : kBlue2Color,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: (MediaQuery.of(context).size.width - 56) /
                2, // Mengatur posisi horizontal FAB di tengah-tengah
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 90, 145),
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
