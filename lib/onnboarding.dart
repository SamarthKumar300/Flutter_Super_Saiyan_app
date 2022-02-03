import 'package:flutter/material.dart';
import 'package:flutter_application_3/home.dart';
import 'package:flutter_application_3/login_page.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Onboarding extends StatelessWidget {
  Onboarding({Key? key}) : super(key: key);

  void onDone(context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Login()));
  }

  final List<PageViewModel> pages = [
    PageViewModel(
      title: "First Page",
      body: "Description",
      image: Center(
        child: Image.asset("images/goku_2.jpg"),
      ),
      decoration: const PageDecoration(
        bodyAlignment: Alignment.center,
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      title: "Second Page",
      body: "Description",
      image: Center(
        child: Image.asset("images/goku_3.jpg"),
      ),
      decoration: const PageDecoration(
        bodyAlignment: Alignment.center,
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      title: "Third Page",
      body: "Description",
      image: Center(
        child: Image.asset("images/goku_4.jpg"),
      ),
      decoration: const PageDecoration(
        bodyAlignment: Alignment.center,
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("On Boarding"),
      //   centerTitle: true,
      // ),
      body: SizedBox(
        child: IntroductionScreen(
            pages: pages,
            dotsDecorator: const DotsDecorator(
              size: Size(10.0, 10.0),
              color: Colors.orange,
              activeSize: Size.square(20),
              activeColor: Colors.black45,
            ),
            showDoneButton: true,
            done: const Text(
              "Done",
              style: TextStyle(fontSize: 20.0),
            ),
            showSkipButton: true,
            skip: const Text(
              "Skip",
              style: TextStyle(fontSize: 20.0),
            ),
            showNextButton: true,
            next: const Icon(
              Icons.arrow_forward,
              size: 20.0,
            ),
            onDone: () {
              onDone(context);
            }),
      ),
    );
  }
}
