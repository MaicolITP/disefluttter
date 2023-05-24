import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

//------------navbar---------------------------
class navbarboton extends StatelessWidget {
  const navbarboton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 15 * 2,
        right: 15 * 2,
        bottom: 10,
      ),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: Color.fromARGB(255, 3, 179, 202).withOpacity(0.38),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/inicio.svg",
              width: 25,
              height: 25,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/compra.svg",
              width: 24,
              height: 24,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/corazon.svg",
              width: 25,
              height: 25,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/usuario.svg",
              width: 25,
              height: 25,
            ),
          ),
        ],
      ),
    );
  }
}
