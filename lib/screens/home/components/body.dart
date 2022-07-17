import 'package:flutter/material.dart';
import 'package:flutter_website/constant.dart';
import 'package:flutter_website/screens/home/components/order_now.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: size.width * 0.5,
          height: size.height * 0.4,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        Column(
          children: [
            Text(
              "GOOD FOOD",
              style: Theme.of(context).textTheme.headline1!.copyWith(
                  color: kTextColor,
                  fontFamily: "GoogleSansDisplay",
                  fontSize: (size.width / size.height) * 50,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Journey for Good Food starts here\nWhy wait Order Now !",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "GoogleSansDisplay",
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            OrderNowButton(
              press: () => print("order now"),
              title: "ORDER NOW",
              buttonSize: Size(150, 50),
              fontSize: 15,
              buttonColor: kTextColor,
              textColor: kPrimaryColor,
            )
          ],
        ),
      ],
    );
  }
}
