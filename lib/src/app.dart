// ignore_for_file: import_of_legacy_library_into_null_safe
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:parcial2/src/sing_in.dart';
import 'package:parcial2/src/widgets/inicio.dart';
import 'package:parcial2/src/widgets/marcas.dart';
import 'package:parcial2/src/widgets/navbar.dart';
import 'package:parcial2/src/widgets/recomen.dart';
import 'package:parcial2/src/widgets/titu_btn.dart';

class MyAppForm extends StatefulWidget {
  const MyAppForm({super.key});
  @override
  State<MyAppForm> createState() => _MyAppFormState();
}

class _MyAppFormState extends State<MyAppForm> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 255, 255).withOpacity(0.4),
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: SvgPicture.asset("assets/icons/menu.svg"),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            inicio(size: size),
            //---------------------------------------
            boton1(title: "Recomendaciones"),
            scroll_img(),
            //---------------------------------------
            boton1(title: "Marcas"),
            diponibleimg()
            //---------------------------------------
          ],
        ),
      ),
      //---------------------------------------
      bottomNavigationBar: navbarboton(),
      //---------------------------------------
      drawer: Drawer(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/logo.png',
                          width: 100,
                          height: 100,
                        ),
                        Text(
                          'Maicol Jossa',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'maicoljosa@gmail.com',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Icon(Icons.home),
                        SizedBox(width: 5),
                        Text('Inicio'),
                      ],
                    ),
                    onTap: () {
                      // Add navigation to item 2 here
                    },
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Icon(Icons.person),
                        SizedBox(width: 5),
                        Text('Usuario'),
                      ],
                    ),
                    onTap: () {
                      // Add navigation to item 2 here
                    },
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Icon(Icons.settings),
                        SizedBox(width: 5),
                        Text('Configuracion'),
                      ],
                    ),
                    onTap: () {
                      // Add navigation to item 2 here
                    },
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Icon(Icons.help),
                        SizedBox(width: 5),
                        Text('Ayuda'),
                      ],
                    ),
                    onTap: () {
                      // Add navigation to item 2 here
                    },
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.logout),
                  SizedBox(width: 5),
                  Text('Cerrar Sesión'),
                ],
              ),
              onTap: () {
                // Navigate to logout page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SingIn()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
