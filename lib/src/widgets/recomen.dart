//clase scroll
import 'package:flutter/material.dart';

class scroll_img extends StatelessWidget {
  const scroll_img({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          imagenes(
            image: "assets/images/iphone14.png",
            title: "Iphone 14 pro max",
            marca: "Apple",
            price: "1.500",
            tag: "image_1",
          ),
          imagenes(
            image: "assets/images/mi12.png",
            title: "Xiaomi 12 pro",
            marca: "Xiaomi",
            price: "910",
            tag: "image_2",
          ),
          imagenes(
            image: "assets/images/oneplus11.png",
            title: "Oneplus 11",
            marca: "OnePlus",
            price: "1.200",
            tag: "image_3",
          ),
          imagenes(
            image: "assets/images/oppo.png",
            title: "Oppo reno 7 pro",
            marca: "Oppo",
            price: "540",
            tag: "image_4",
          ),
        ],
      ),
    );
  }
}

//clase imagenes
class imagenes extends StatelessWidget {
  const imagenes({
    super.key,
    required this.image,
    required this.title,
    required this.marca,
    required this.price,
    required this.tag,
  });

  final String image, title, marca, tag, price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: 20,
        top: 20 / 2,
        bottom: 20 * 2.5,
      ),
      width: size.width < 380 ? size.width : size.width * 0.4,
      child: Column(
        children: <Widget>[
          Hero(
            tag: tag,
            child: Image.asset(image),
          ),
          Container(
            padding: EdgeInsets.all(20 / 2),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color.fromARGB(255, 3, 74, 92).withOpacity(0.23),
                  )
                ]),
            child: Row(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "$title\n",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                        text: "$marca",
                        style: TextStyle(
                          color: Color.fromARGB(255, 11, 172, 221)
                              .withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Text(
                  '\$ $price',
                  style: TextStyle(
                    color: Color.fromARGB(255, 3, 128, 167),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
