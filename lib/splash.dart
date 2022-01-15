import 'package:flutter/material.dart';
import 'package:flutter_application_3/main.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _splashState();
}

// ignore: camel_case_types
class _splashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 2000), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => const MyHomePage(title: "HomePage")));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage('images/ball2.png'),
              backgroundColor: Colors.black12,
            ),
            Text(
              'DRAGON BALL',
              style: TextStyle(
                fontFamily: 'GothamBold',
                fontSize: 30.0,
                letterSpacing: 2.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
