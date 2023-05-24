import 'package:flutter/material.dart';

class SingIn extends StatefulWidget {
  const SingIn({super.key});

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 173, 172, 172),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment(1.0, 1.8),
                colors: <Color>[
                  Color.fromARGB(255, 34, 86, 102),
                  Color.fromARGB(255, 79, 214, 255),
                  Color.fromARGB(255, 73, 245, 202),
                  Color.fromARGB(255, 46, 212, 135),
                  Color.fromARGB(255, 0, 156, 71),
                ],
              ),
              borderRadius: BorderRadius.circular(0)),
          // margin: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 160.0,
            ),
            children: <Widget>[
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ClipOval(
                      child: Image.asset(
                        'assets/images/logoL.png',
                        width: 100.0,
                        height: 180.0,
                      ),
                    ),
                    Text(
                      'Iniciar Sesión',
                      style: TextStyle(
                        shadows: <Shadow>[
                          Shadow(
                            color: Color.fromARGB(255, 255, 255, 255),
                            offset: Offset(3.0, 5.0),
                            blurRadius: 3.0,
                          ),
                        ],
                        fontFamily: 'fuente1',
                        fontSize: 80.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    Divider(
                      height: 10.0,
                      color: Color.fromARGB(0, 0, 0, 0),
                    ),
                    Text(
                      'Bienvenido a mi app',
                      style: TextStyle(
                        shadows: <Shadow>[
                          Shadow(
                            color: Color.fromARGB(255, 255, 255, 255),
                            offset: Offset(1.0, 1.0),
                            blurRadius: 2.0,
                          ),
                        ],
                        fontFamily: 'fuente1',
                        fontSize: 25.0,
                        color: Color.fromARGB(255, 59, 59, 59),
                      ),
                    )
                  ]),
              Divider(
                height: 10.0,
                color: Color.fromARGB(0, 255, 255, 255),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Correo electrónico',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  suffixIcon: Icon(Icons.alternate_email),
                ),
              ),
              Divider(
                height: 9.0,
                color: Color.fromARGB(0, 255, 255, 255),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Contraseña',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    suffixIcon: Icon(Icons.lock_outline)),
                obscureText: true,
              ),
              SizedBox(
                height: 10,
              ),
              // boton
              ElevatedButton(
                child: Text(
                  'Iniciar sesión',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'Home');
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Colors.black),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'No tienes cuenta?',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 46, 46, 46),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegistroPage()),
                      );
                    },
                    child: Text(
                      ' Registrarse',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 0, 140, 255),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RegistroPage extends StatelessWidget {
  const RegistroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 173, 172, 172),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment(1.0, 1.8),
                colors: <Color>[
                  Color.fromARGB(255, 34, 86, 102),
                  Color.fromARGB(255, 79, 214, 255),
                  Color.fromARGB(255, 73, 245, 202),
                  Color.fromARGB(255, 46, 212, 135),
                  Color.fromARGB(255, 0, 156, 71),
                ],
              ),
              borderRadius: BorderRadius.circular(0)),
          // margin: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 100.0,
            ),
            children: <Widget>[
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ClipOval(
                      child: Image.asset(
                        'assets/images/logoL.png',
                        width: 100.0,
                        height: 180.0,
                      ),
                    ),
                    Text(
                      'Registro',
                      style: TextStyle(
                        shadows: <Shadow>[
                          Shadow(
                            color: Color.fromARGB(255, 255, 255, 255),
                            offset: Offset(3.0, 5.0),
                            blurRadius: 3.0,
                          ),
                        ],
                        fontFamily: 'fuente1',
                        fontSize: 80.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    Divider(
                      height: 20.0,
                      color: Color.fromARGB(0, 0, 0, 0),
                    ),
                  ]),
              Divider(
                height: 10.0,
                color: Color.fromARGB(0, 255, 255, 255),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Usuario',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  suffixIcon: Icon(Icons.person),
                ),
              ),
              Divider(
                height: 10.0,
                color: Color.fromARGB(0, 255, 255, 255),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Correo electrónico',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  suffixIcon: Icon(Icons.email),
                ),
              ),
              Divider(
                height: 9.0,
                color: Color.fromARGB(0, 255, 255, 255),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Contraseña',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    suffixIcon: Icon(Icons.lock_outline)),
                obscureText: true,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Repite la contraseña',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    suffixIcon: Icon(Icons.lock_outline)),
                obscureText: true,
              ),
              SizedBox(
                height: 10,
              ),
              // boton
              ElevatedButton(
                child: Text(
                  'Registrarse',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'sing_in');
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
