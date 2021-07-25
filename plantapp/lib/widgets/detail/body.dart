import 'package:flutter/material.dart';
import 'package:plantapp/constant.dart';
import '../detail/title_and_price.dart';

import './image_and_icons.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(),
          TitleAndPrice(country: 'Russia', title: 'Angelica', price: '440'),
          SizedBox(height: kDefaultPadding),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                          ),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(kPrimaryColor)),
                  child: Text(
                    'Buy Now',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Text('Description',
                      style: TextStyle(color: Colors.black, fontSize: 16)),
                  onPressed: () {},
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
