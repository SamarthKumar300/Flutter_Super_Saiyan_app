import 'package:flutter/material.dart';
import 'package:flutter_application_3/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Splash(),
    );
  }
}

class SuperSplashScreen extends StatelessWidget {
  const SuperSplashScreen({Key? key, required Column splash}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SuperSplashScreen(
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage('images/ball2.png'),
              backgroundColor: Colors.black12,
            ),
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff011226),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('images/goku.jpg'),
              ),
              const SizedBox(
                height: 30.0,
                width: 30.0,
              ),
              const Text(
                'GOKU',
                style: TextStyle(
                  fontFamily: 'GothamBold',
                  fontSize: 30.0,
                  letterSpacing: 2.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10.0,
                width: 10.0,
              ),
              Text(
                'SUPER SAIYAN',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.blue.shade100,
                  fontSize: 15.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 100.0,
                child: Divider(
                  color: Colors.blueAccent.shade100,
                ),
              ),
              const Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  color: Color(0xff011226),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    title: Text(
                      "E-mail",
                      style: TextStyle(
                        color: Colors.white38,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 15.0,
                      ),
                    ),
                  )),
              const Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: const Color(0xff011226),
                child: ListTile(
                  leading: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Password',
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white38,
                        fontFamily: 'Source Sans Pro'),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
                width: 20.0,
              ),
              SizedBox(
                height: 40.0,
                width: 120.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff4dedfd),
                    side: const BorderSide(
                        width: 2, color: Colors.white), //border width and color
                    elevation: 5, //elevation of button
                    shape: RoundedRectangleBorder(
                        //to set border radius to button
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('LOGIN'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
