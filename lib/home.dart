import 'package:flutter/material.dart';
import 'package:flutter_application_3/login_page.dart';
import 'package:flutter_application_3/main.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  int currentIndex = 0;

  // Creating Animation Controller
  late AnimationController _animationController;

  // Initializing Animation Comtroller
  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  // Method when user will tap
  bool videoPlaying = false;

  void _iconTapped() {
    if (videoPlaying = false) {
      _animationController.forward();
      videoPlaying = true;
    } else {
      _animationController.reverse();
      videoPlaying = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black12,
      body: Column(
        children: [
          SizedBox(
            height: _size.height / 4,
            child: Stack(children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.deepOrange,
                  image: DecorationImage(
                    image: AssetImage("images/goku_appbar.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  height: 40.0,
                  width: 40.0,
                  top: 40,
                  left: 5,
                  child: FloatingActionButton(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black12,
                    child: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const MyHomePage(
                              title: '',
                            );
                          },
                        ),
                      );
                    },
                  ))
            ]),
          ),
          Expanded(
            child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    height: 50.0,
                    color: Colors.black12,
                    // alignment: const Alignment(0, -1),
                    child: Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "1986-89",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.deepOrange,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "1989-96",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.deepOrange,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0))),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "1996-97",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.deepOrange,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "2009-11",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.deepOrange,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                          ),
                        ],
                      ),
                    ), ////////
                  ),
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            alignment: Alignment.centerLeft,
                            opacity: 0.1,
                            image: AssetImage(
                              "images/goku_3.jpg",
                            ),
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Colors.black12, Colors.deepOrange]),
                        ),
                        margin: const EdgeInsets.all(8.0),
                        height: 80.0,
                        width: _size.width,
                      ),
                      const Positioned(
                        right: 20,
                        child: Icon(
                          Icons.play_circle_fill_rounded,
                          color: Colors.white,
                          size: 36,
                        ),
                      ),
                      Positioned(
                        // height: 80.0,
                        // width: 80.0,
                        left: 30.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Gurenge",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "LiSA",
                              style: TextStyle(
                                  fontSize: 10.0, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      const Positioned(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/ball2.png"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            alignment: Alignment.centerLeft,
                            opacity: 0.1,
                            image: AssetImage(
                              "images/goku_3.jpg",
                            ),
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Colors.black12, Colors.deepOrange]),
                        ),
                        margin: const EdgeInsets.all(8.0),
                        height: 80.0,
                        width: _size.width,
                      ),
                      const Positioned(
                        right: 20,
                        child: Icon(
                          Icons.play_circle_fill_rounded,
                          color: Colors.white,
                          size: 36,
                        ),
                      ),
                      Positioned(
                        // height: 80.0,
                        // width: 80.0,
                        left: 30.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Kaikai Kitan",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Eve",
                              style: TextStyle(
                                  fontSize: 10.0, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      const Positioned(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/ball2.png"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            alignment: Alignment.centerLeft,
                            opacity: 0.1,
                            image: AssetImage(
                              "images/goku_3.jpg",
                            ),
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Colors.black12, Colors.deepOrange]),
                        ),
                        margin: const EdgeInsets.all(8.0),
                        height: 80.0,
                        width: _size.width,
                      ),
                      const Positioned(
                        right: 20,
                        child: Icon(
                          Icons.play_circle_fill_rounded,
                          color: Colors.white,
                          size: 36,
                        ),
                      ),
                      Positioned(
                        // height: 80.0,
                        // width: 80.0,
                        left: 30.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Guren",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Does",
                              style: TextStyle(
                                  fontSize: 10.0, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      const Positioned(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/ball2.png"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            alignment: Alignment.centerLeft,
                            opacity: 0.1,
                            image: AssetImage(
                              "images/goku_3.jpg",
                            ),
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Colors.black12, Colors.deepOrange]),
                        ),
                        margin: const EdgeInsets.all(8.0),
                        height: 80.0,
                        width: _size.width,
                      ),
                      const Positioned(
                        right: 20,
                        child: Icon(
                          Icons.play_circle_fill_rounded,
                          color: Colors.white,
                          size: 36,
                        ),
                      ),
                      Positioned(
                        // height: 80.0,
                        // width: 80.0,
                        left: 30.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Crossing Field",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "LiSA",
                              style: TextStyle(
                                  fontSize: 10.0, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      const Positioned(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/ball2.png"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            alignment: Alignment.centerLeft,
                            opacity: 0.1,
                            image: AssetImage(
                              "images/goku_3.jpg",
                            ),
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Colors.black12, Colors.deepOrange]),
                        ),
                        margin: const EdgeInsets.all(8.0),
                        height: 80.0,
                        width: _size.width,
                      ),
                      const Positioned(
                        right: 20,
                        child: Icon(
                          Icons.play_circle_fill_rounded,
                          color: Colors.white,
                          size: 36,
                        ),
                      ),
                      Positioned(
                        // height: 80.0,
                        // width: 80.0,
                        left: 30.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Shinzou Wo Sasageyo",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Linked Horizon",
                              style: TextStyle(
                                  fontSize: 10.0, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      const Positioned(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/ball2.png"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            alignment: Alignment.centerLeft,
                            opacity: 0.1,
                            image: AssetImage(
                              "images/goku_3.jpg",
                            ),
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Colors.black12, Colors.deepOrange]),
                        ),
                        margin: const EdgeInsets.all(8.0),
                        height: 80.0,
                        width: _size.width,
                      ),
                      const Positioned(
                        right: 20,
                        child: Icon(
                          Icons.play_circle_fill_rounded,
                          color: Colors.white,
                          size: 36,
                        ),
                      ),
                      Positioned(
                        // height: 80.0,
                        // width: 80.0,
                        left: 30.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "The Hero",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Jam Project",
                              style: TextStyle(
                                  fontSize: 10.0, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      const Positioned(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/ball2.png"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            alignment: Alignment.centerLeft,
                            opacity: 0.1,
                            image: AssetImage(
                              "images/goku_3.jpg",
                            ),
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Colors.black12, Colors.deepOrange]),
                        ),
                        margin: const EdgeInsets.all(8.0),
                        height: 80.0,
                        width: _size.width,
                      ),
                      const Positioned(
                        right: 20,
                        child: Icon(
                          Icons.play_circle_fill_rounded,
                          color: Colors.white,
                          size: 36,
                        ),
                      ),
                      Positioned(
                        // height: 80.0,
                        // width: 80.0,
                        left: 30.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Hey Kids",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "THE ORAL CIGARETTES",
                              style: TextStyle(
                                  fontSize: 10.0, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      const Positioned(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/ball2.png"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            alignment: Alignment.centerLeft,
                            opacity: 0.1,
                            image: AssetImage(
                              "images/goku_3.jpg",
                            ),
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Colors.black12, Colors.deepOrange]),
                        ),
                        margin: const EdgeInsets.all(8.0),
                        height: 80.0,
                        width: _size.width,
                      ),
                      const Positioned(
                        right: 20,
                        child: Icon(
                          Icons.play_circle_fill_rounded,
                          color: Colors.white,
                          size: 36,
                        ),
                      ),
                      Positioned(
                        // height: 80.0,
                        // width: 80.0,
                        left: 30.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "sh0ut",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "[nzk]:ft.Gemie",
                              style: TextStyle(
                                  fontSize: 10.0, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      const Positioned(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/ball2.png"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            alignment: Alignment.centerLeft,
                            opacity: 0.1,
                            image: AssetImage(
                              "images/goku_3.jpg",
                            ),
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Colors.black12, Colors.deepOrange]),
                        ),
                        margin: const EdgeInsets.all(8.0),
                        height: 80.0,
                        width: _size.width,
                      ),
                      const Positioned(
                        right: 20,
                        child: Icon(
                          Icons.play_circle_fill_rounded,
                          color: Colors.white,
                          size: 36,
                        ),
                      ),
                      Positioned(
                        // height: 80.0,
                        // width: 80.0,
                        left: 30.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Know Know Know",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Does",
                              style: TextStyle(
                                  fontSize: 10.0, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      const Positioned(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/ball2.png"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
          ),
        ],
      ),
      floatingActionButton: CircleAvatar(
        backgroundColor: Colors.deepOrange,
        radius: 30.0,
        child: GestureDetector(
          onTap: () {
            _iconTapped();
          },
          onDoubleTap: () {},
          child: AnimatedIcon(
            color: Colors.white,
            icon: AnimatedIcons.play_pause,
            progress: _animationController,
            size: 30.0,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        backgroundColor: Colors.white,
        fixedColor: Colors.deepOrange,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label: "Previous",
            backgroundColor: Colors.black12,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_previous),
            label: "Next",
            backgroundColor: Colors.black12,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_next),
            label: "Next",
            backgroundColor: Colors.black12,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            label: "Next",
            backgroundColor: Colors.black12,
          ),
        ],
      ),
    );

    // appBar: AppBar(
    //   title: const Text("Super Saiyan App"),
    //   automaticallyImplyLeading: true,
    //   leading: IconButton(
    //       icon: const Icon(Icons.arrow_back),
    //       onPressed: () {
    //         Navigator.pop(context);
    //         MaterialPageRoute(builder: (BuildContext context) {
    //           return Login();
    //         });
    //       }),
    // ),
    // bottomNavigationBar: BottomNavigationBar(
    //   items: const [
    //     BottomNavigationBarItem(
    //         icon: Icon(Icons.home),
    //         label: "Home",
    //         backgroundColor: Colors.orange)
    //   ],
    // ),
    //   body: Column(children: [
    //     SizedBox(
    //       height: _size.height / 3.6,
    //       child: CustomScrollView(
    //         slivers: <Widget>[
    //           // Sliver App bar
    //           SliverAppBar(
    //             leading: const Icon(
    //               Icons.arrow_back,
    //               color: Colors.white,
    //             ),
    //             title: const Text(
    //               "Shonen Music",
    //               style: TextStyle(
    //                 color: Colors.white,
    //                 fontSize: 15.0,
    //               ),
    //               textAlign: TextAlign.left,
    //             ),
    //             pinned: true,
    //             snap: true,
    //             floating: true,
    //             expandedHeight: 170,
    //             backgroundColor: Colors.orange[900],
    //             iconTheme: const IconThemeData(color: Colors.orange),
    //             flexibleSpace: FlexibleSpaceBar(
    //               title: const Text(
    //                 'S U P E R S A I Y A N',
    //                 style: TextStyle(color: Colors.white, fontSize: 12.0),
    //               ),
    //               centerTitle: true,
    //               background: Image.asset(
    //                 'images/goku_appbar.jpg',
    //                 fit: BoxFit.fitWidth,
    //               ),
    //             ),
    //           ),

    //           // Sliver items
    //         ],
    //       ),
    //     ),
    //     SliverToBoxAdapter(
    //       child: Padding(
    //         padding: const EdgeInsets.symmetric(vertical: 16.0),
    //         child: Container(
    //           alignment: const Alignment(0.0, -1.0),
    //           height: 50,
    //           width: double.maxFinite,
    //           decoration: const BoxDecoration(
    //             color: Colors.deepOrange,
    //             borderRadius: BorderRadius.all(
    //               Radius.circular(10.0),
    //             ),
    //           ),
    //           child: Row(
    //             mainAxisSize: MainAxisSize.max,
    //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //             children: <Widget>[
    //               IconButton(
    //                 onPressed: () {},
    //                 icon: const Icon(
    //                   Icons.forward_10,
    //                   color: Colors.white,
    //                 ),
    //               ),
    //               IconButton(
    //                 onPressed: () {},
    //                 icon: const Icon(
    //                   Icons.music_note,
    //                   color: Colors.white,
    //                 ),
    //               ),
    //               IconButton(
    //                 onPressed: () {},
    //                 icon: const Icon(
    //                   Icons.pause,
    //                   color: Colors.white,
    //                 ),
    //               ),
    //               IconButton(
    //                   onPressed: () {},
    //                   icon: const Icon(
    //                     Icons.music_off_rounded,
    //                     color: Colors.white,
    //                   ))
    //             ],
    //           ),
    //         ),
    //       ),
    //     )
    //   ]),
    // );
    // body:
    // Container(
    // height: 50,
    // width: double.maxFinite,
    // decoration: const BoxDecoration(
    //   color: Colors.orange,
    //   borderRadius: BorderRadius.all(
    //     Radius.circular(10.0),
    //   ),
    // ),
    // child: Row(
    //   mainAxisSize: MainAxisSize.max,
    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   children: <Widget>[
    //     IconButton(
    //       onPressed: () {},
    //       icon: Icon(Icons.forward_10),
    //     ),
    //     IconButton(
    //       onPressed: () {},
    //       icon: Icon(Icons.music_note),
    //     ),
    //     IconButton(
    //       onPressed: () {},
    //       icon: Icon(Icons.pause),
    //     ),
    //     IconButton(onPressed: () {}, icon: Icon(Icons.music_off_rounded))
    //   ],
    // ),
    // );

    // Widget bottomNavBar() => SliverToBoxAdapter(
    //   child: BottomNavigationBar(items: [],

    //   ),

    // );
  }
}

// Container(
//                   alignment: const Alignment(0.0, -1.0),
//                   height: 50,
//                   width: double.maxFinite,
//                   decoration: const BoxDecoration(
//                     color: Colors.deepOrange,
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(10.0),
//                     ),
//                   ),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.max,
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: <Widget>[
//                       IconButton(
//                         onPressed: () {},
//                         icon: const Icon(Icons.forward_10),
//                       ),
//                       IconButton(
//                         onPressed: () {},
//                         icon: const Icon(Icons.music_note),
//                       ),
//                       IconButton(
//                         onPressed: () {},
//                         icon: const Icon(Icons.pause),
//                       ),
//                       IconButton(
//                           onPressed: () {},
//                           icon: const Icon(Icons.music_off_rounded))
//                     ],
//                   ),
//                 ),
