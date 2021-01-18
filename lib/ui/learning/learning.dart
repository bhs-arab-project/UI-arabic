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
    // Size size = MediaQuery.of(context).size;
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Scaffold(
      backgroundColor: Colors.grey[100],
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height - 500,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40)),
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/image/homescreenlearning.png"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height - 570,
                          left: 30,
                          right: 30),
                      height: 120,
                      child: Align(
                          alignment: Alignment.center,
                          child: BeautyTextfield(
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w700,
                            width: double.maxFinite,
                            height: 55,
                            duration: Duration(milliseconds: 300),
                            inputType: TextInputType.text,
                            prefixIcon: Icon(Icons.search),
                            placeholder: "Mau belajar apa?",
                            onTap: () {
                              print('Click');
                            },
                            onChanged: (t) {
                              print(t);
                            },
                            onSubmitted: (d) {
                              print(d.length);
                            },
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Stack(
                    children: [
                      FadeTransition(
                        opacity: _animation,
                        child: Container(
                          padding: const 
                          EdgeInsets.only(bottom: 5),
                          child: Text(
                            "Pelajaran",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Avenir'),
                                textAlign: TextAlign.start
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        width: MediaQuery.of(context).size.width / 3.5,
                        child: Container(
                          height: 2.5,
                          color: Colors.amber.withOpacity(0.2),
                        ))
                    ],
                  ),
                ),
              ScrollConfiguration(
                behavior: LearningScroll(),
                child: Container(
                  height: 245,
                  child: SlideTransition(
                    position:
                        Tween<Offset>(begin: Offset(1, 0), end: Offset(0, 0))
                            .animate(_animController),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Stack(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              margin:
                                  EdgeInsets.fromLTRB(15.0, 35.0, 15.0, 30.0),
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/list');
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(23),
                                  topRight: Radius.circular(160),
                                  bottomLeft: Radius.circular(23),
                                  bottomRight: Radius.circular(23),
                                )),
                                padding: EdgeInsets.all(0.0),
                                child: Ink(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(23),
                                          topRight: Radius.circular(160),
                                          bottomLeft: Radius.circular(23),
                                          bottomRight: Radius.circular(23),
                                        )),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width -30,
                                      child: Container(
                                        padding: EdgeInsets.all(20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text("SHOROF",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 20,
                                                        color: Colors.blueGrey[800],
                                                        fontFamily: 'Avenir')),
                                                SizedBox(
                                                  width: MediaQuery.of(context).size.width / 5,
                                                ),
                                                Container(
                                                  alignment: Alignment.center,
                                                  padding: EdgeInsets.all(2),
                                                  height: 25,
                                                  width: 70,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: Colors.green),
                                                  child: Text("Beginner",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 13,
                                                          color: Colors.white,
                                                          fontFamily:
                                                              'Avenir')),
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 23),
                                            Text("Mentor: ",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16,
                                                    color: Colors.blue,
                                                    fontFamily: 'Avenir')),
                                            Text("Abdul Malik",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 18,
                                                    color: Colors.blueGrey[800],
                                                    fontFamily: 'Avenir')),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                    child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.assignment,
                                                      color: Colors
                                                          .tealAccent[300],
                                                    ),
                                                    Text("10 Materi",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 17,
                                                            color: Colors.blueGrey[800],
                                                            fontFamily:
                                                                'Avenir')),
                                                  ],
                                                )),
                                                SizedBox(
                                                  width: 100.0,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                              ),
                            ),
                            Positioned(
                                left: 245,
                                right: 0,
                                top: -20,
                                child: Column(
                                  children: [
                                    Container(
                                      child: Image.asset(
                                          "assets/icon/beginlearn.png",
                                          height: 170,
                                          width: 170),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Text("Kesulitan",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 18,
                                                  color: Colors.blueGrey[800],
                                                  fontFamily: 'Avenir')),
                                          Container(
                                              alignment: Alignment.center,
                                              child: Image.asset(
                                                  "assets/icon/Star/5.png",
                                                  height: 20,
                                                  width: 100))
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
