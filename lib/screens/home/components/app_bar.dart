import 'package:flutter/material.dart';
import 'package:flutter_website/constant.dart';
import 'package:flutter_website/screens/home/components/custom_search_delegate.dart';
import 'package:flutter_website/screens/home/components/menu_item.dart';
import 'package:flutter_website/screens/home/components/order_now.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.only(left: 20, right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, -2),
              blurRadius: 30,
              color: Colors.black.withOpacity(0.16))
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/logo.png",
            height: 50,
            alignment: Alignment.topCenter,
          ),
          const SizedBox(width: 5),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: kTextColor.withOpacity(0.5),
              )),
          Flexible(
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search here...",
                  hintStyle: TextStyle(
                    fontFamily: "GoogleSansDisplay",
                    color: kTextColor.withOpacity(0.7),
                  ),
                  border: InputBorder.none),
            ),
          ),
          const Spacer(),
          MenuItem(
            title: "Home",
            press: () {
              print("Home");
            },
          ),
          MenuItem(
            title: "Menu",
            press: () {
              print("Menu");
            },
          ),
          MenuItem(
            title: "About",
            press: () {
              print("About");
            },
          ),
          MenuItem(
            title: "Contact",
            press: () {
              print("Contact");
            },
          ),
          OrderNowButton(
            press: () {
              print("order now");
            },
            title: 'ORDER NOW',
          ),
        ],
      ),
    );
  }
}
