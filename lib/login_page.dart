import 'package:flutter/material.dart';
import 'package:flutter_application_3/main.dart';
import 'dart:math' as math;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

// ignore: camel_case_types
class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  // late AnimationController rotationController;
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: Duration(seconds: 1))
        ..repeat();

  @override
  void initState() {
    // rotationController = AnimationController(
    //     duration: const Duration(milliseconds: 500), vsync: this);

    // TODO: implement initState

    super.initState();
    _navigatetohome();
  }

  // void initState() {

  //   super.initState();
  //   _navigatetohome();
  // }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 4000), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => const MyHomePage(title: "HomePage")));
    });
  }

  @override
  Widget build(BuildContext context) {
    // rotationController.forward(from: 0.0);
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // RotationTransition(
            //   turns: Tween(begin: 0.0, end: 2.0).animate(rotationController),
            // child:
            // ),
            // ),
            AnimatedBuilder(
                animation: _controller,
                builder: (_, child) {
                  return Transform.rotate(
                    angle: _controller.value * 2 * math.pi,
                    child: child,
                  );
                },
                child: const CircleAvatar(
                  radius: 100.0,
                  backgroundImage: AssetImage('images/ball2.png'),
                  backgroundColor: Colors.black12,
                )),
            const Text(
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

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
}
