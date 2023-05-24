//-----------------imagenes----------------------
import 'package:flutter/material.dart';

class diponibleimg extends StatelessWidget {
  const diponibleimg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          disponiblesimg(
            image2: "assets/images/iphone.gif",
            tag2: "imagen1",
          ),
          disponiblesimg(
            image2: "assets/images/xiaomi12.gif",
            tag2: "imagen2",
          ),
          disponiblesimg(
            image2: "assets/images/OnePlus11.gif",
            tag2: "imagen3",
          ),
          disponiblesimg(
            image2: "assets/images/oppo.gif",
            tag2: "imagen4",
          ),
        ],
      ),
    );
  }
}

//---------------disponible------------------------
class disponiblesimg extends StatelessWidget {
  const disponiblesimg({
    super.key,
    required this.image2,
    required this.tag2,
  });

  final String image2, tag2;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(
          left: 20,
          top: 20 / 2,
          bottom: 20 / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image2),
            )),
      ),
    );
  }
}
