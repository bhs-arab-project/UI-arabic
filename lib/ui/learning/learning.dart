part of '../uis.dart';

class Learning extends StatefulWidget {
  @override
  _LearningState createState() => _LearningState();
}

class _LearningState extends State<Learning>
    with SingleTickerProviderStateMixin {
  AnimationController _animController;
  Animation<double> _animation;

  @override
  void initState() {
    _animController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    final Animation curve =
        CurvedAnimation(parent: _animController, curve: Curves.fastOutSlowIn);
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(curve);
    _animController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: size.height * 0.4 - 36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/image/homescreenlearning.png"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: displayWidth(context) * 1 / 2.2,
                          left: 30,
                          right: 30),
                      height: displayWidth(context) * 1 / 3.3,
                      child: Align(
                          alignment: Alignment.center,
                          // child: Card(
                          //   elevation: 8.0,
                          //   shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(
                          //         displayWidth(context) * 0.05),
                          //   ),
                          //   child: Column(
                          //     children: <Widget>[
                          //       Container(
                          //         margin: EdgeInsets.symmetric(
                          //             horizontal: displayWidth(context) * 0.05,
                          //             vertical: displayWidth(context) * 0.05),
                          //         child: Text(
                          //           "Start Learning Arabic",
                          //           style: TextStyle(
                          //             fontSize: displayWidth(context) * 0.04,
                          //             fontFamily: "Avenir",
                          //             fontWeight: FontWeight.bold,
                          //           ),
                          //         ),
                          //       ),
                          //       Container(
                          //         margin: EdgeInsets.symmetric(
                          //             horizontal: displayWidth(context) * 0.05,
                          //             vertical: displayWidth(context) * 0.025),
                          //         child: Text("404 NOT FOUND CONTENT",
                          //             style: TextStyle(
                          //                 fontFamily: "Avenir",
                          //                 fontSize: displayWidth(context) * 0.03,
                          //                 fontWeight: FontWeight.w500)),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          child: BeautyTextfield(
                            width: double.maxFinite,
                            height: 60,
                            duration: Duration(milliseconds: 300),
                            inputType: TextInputType.text,
                            prefixIcon: Icon(
                              Icons.lock_outline,
                            ),
                            placeholder: "With Suffic Icon",
                            onTap: () {
                              print('Click');
                            },
                            onChanged: (t) {
                              print(t);
                            },
                            onSubmitted: (d) {
                              print(d.length);
                            },
                            // suffixIcon: Icon(Icons.remove_red_eye),
                          )
                          // TextField(
                          //   decoration: InputDecoration(
                          //     border: OutlineInputBorder(
                          //       borderSide: BorderSide(
                          //         color: Colors.red, //this has no effect
                          //       ),
                          //       borderRadius: BorderRadius.circular(20.0),
                          //     ),
                          //     hintText: "Border decoration text ...",
                          //   ),
                          // ),
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 300),
                child: Container(
                  height: 30,
                  child: Stack(
                    children: [
                      FadeTransition(
                        opacity: _animation,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: kDefaultPadding / 10),
                          child: Text(
                            "Belajar",
                            style: TextStyle(
                                fontSize: displayWidth(context) * 0.05,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Avenir'),
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: displayHeight(context) * 0.005,
                          left: 0,
                          right: 0,
                          child: Container(
                            margin: EdgeInsets.only(right: kDefaultPadding / 3),
                            height: displayWidth(context) * 0.012,
                            color: Colors.amber.withOpacity(0.2),
                          ))
                    ],
                  ),
                ),
              ),
              // ScrollConfiguration(
              //   behavior: LearningScroll(),
              //   child: Container(
              //     height: 200,
              //     child: SlideTransition(
              //       position:
              //           Tween<Offset>(begin: Offset(1, 0), end: Offset(0, 0))
              //               .animate(_animController),
              //       child: ListView(
              //         scrollDirection: Axis.horizontal,
              //         children: <Widget>[
              //           Stack(
              //             children: [
              //               Container(
              //                 margin: EdgeInsets.only(
              //                     top: 10,
              //                     left: 10,),
              //                 child: RaisedButton(
              //                   onPressed: () {
              //                     Navigator.pushNamed(context, '/beginlearn');
              //                   },
              //                   shape: RoundedRectangleBorder(
              //                       borderRadius: BorderRadius.only(
              //                     topLeft: Radius.circular(
              //                         displayWidth(context) * 0.05),
              //                     topRight: Radius.circular(
              //                         displayWidth(context) * 0.29),
              //                     bottomLeft: Radius.circular(
              //                         displayWidth(context) * 0.05),
              //                     bottomRight: Radius.circular(
              //                         displayWidth(context) * 0.05),
              //                   )),
              //                   padding: EdgeInsets.all(0.0),
              //                   child: Ink(
              //                     decoration: BoxDecoration(
              //                         gradient: LinearGradient(
              //                             begin: Alignment.topLeft,
              //                             colors: [
              //                               HexColor("#089467"),
              //                               HexColor("#77c4a9")
              //                             ]),
              //                         borderRadius: BorderRadius.only(
              //                           topLeft: Radius.circular(
              //                               displayWidth(context) * 0.05),
              //                           topRight: Radius.circular(
              //                               displayWidth(context) * 0.29),
              //                           bottomLeft: Radius.circular(
              //                               displayWidth(context) * 0.05),
              //                           bottomRight: Radius.circular(
              //                               displayWidth(context) * 0.05),
              //                         )),
              //                     child: Container(
              //                       constraints: const BoxConstraints(
              //                           minWidth: 188.0,
              //                           minHeight:
              //                               100.0), // min sizes for Material buttons
              //                       alignment: Alignment.center,
              //                       child: Container(
              //                         margin: EdgeInsets.only(
              //                             top: displayWidth(context) * 0.27),
              //                         alignment: Alignment.topLeft,
              //                         child: Column(
              //                           crossAxisAlignment:
              //                               CrossAxisAlignment.start,
              //                           children: [
              //                             Text("Beginner",
              //                                 style: TextStyle(
              //                                     fontWeight: FontWeight.bold,
              //                                     fontSize:
              //                                         displayWidth(context) *
              //                                             0.047,
              //                                     color: Colors.white,
              //                                     fontFamily: 'Avenir')),
              //                             SizedBox(
              //                                 height: displayHeight(context) *
              //                                     0.01),
              //                             Text("Untuk 6-11 Tahun",
              //                                 style: TextStyle(
              //                                     fontWeight: FontWeight.bold,
              //                                     fontSize:
              //                                         displayWidth(context) *
              //                                             0.029,
              //                                     color: Colors.white,
              //                                     fontFamily: 'Avenir')),
              //                           ],
              //                         ),
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //               Positioned(
              //                 left: 50,
              //                 right: 0,
              //                 top: -20,
              //                 child: Container(
              //                   child: Image.asset("assets/icon/beginlearn.png",
              //                       height: displayHeight(context) * 0.18,
              //                       width: displayWidth(context) * 0.18),
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class LearningScroll extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
