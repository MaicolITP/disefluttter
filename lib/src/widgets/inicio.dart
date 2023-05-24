//clase inicio logo,texto,fondo
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class inicio extends StatelessWidget {
  const inicio({
    super.key,
    required this.size,
  });
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20 * 2.0),
      height: size.height * 0.18,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 36 + 20,
            ),
            height: size.height * 0.2 - 40,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 255, 255).withOpacity(0.4),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'CellMarket',
                  style: TextStyle(
                    fontFamily: 'millenia',
                    shadows: <Shadow>[
                      Shadow(
                        color: Color.fromARGB(255, 18, 214, 221),
                        offset: Offset(1.0, 2.0),
                        blurRadius: 2.0,
                      ),
                    ],
                    fontSize: 40.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                Spacer(),
                ClipOval(
                  child: Image.asset(
                    'assets/images/logoL.png',
                    width: 50.0,
                    height: 50.0,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color.fromARGB(255, 11, 134, 143).withOpacity(0.23),
                  )
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              hintText: "Buscar",
                              hintStyle: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0)
                                    .withOpacity(0.7),
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        SvgPicture.asset("assets/icons/search.svg"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
