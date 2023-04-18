import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        elevation: 11,
        child: Container(
            height: 50,
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.home_outlined,
                    )),
                IconButton(onPressed: () {}, icon: Icon(Icons.map_outlined)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.settings_outlined)),
              ],
            ))));
  }
}
