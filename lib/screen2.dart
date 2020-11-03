import 'package:flutter/material.dart';
import 'main.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.team}) : super(key: key);

  final Team team;

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counterA = 0;
  int _counterB = 0;

  void _addA() {
    setState(() {
      _counterA++;
    });
  }

  void _addB() {
    setState(() {
      _counterB++;
    });
  }

  void _minusA() {
    setState(() {
      _counterA--;
    });
  }

  void _minusB() {
    setState(() {
      _counterB--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: new Text(
          "SCORE COUNTER",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                child: Row(children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(right: 50, bottom: 1, left: 60),
                      // padding: EdgeInsets.only(right: 8, left: 8),
                      child: Column(children: <Widget>[
                        Text(
                          "Team",
                          style: TextStyle(
                            color: Colors.indigoAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "${widget.team.team1}",
                          style: TextStyle(
                            color: Colors.indigoAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ])),
                  Container(
                    margin: EdgeInsets.only(right: 20, bottom: 1, left: 60),
                    //  padding: EdgeInsets.only(right: 8, left: 8),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Team",
                          style: TextStyle(
                            color: Colors.indigoAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "${widget.team.team2}",
                          style: TextStyle(
                            color: Colors.indigoAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ] //widget
                    )),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        top: 1, right: 20, bottom: 15, left: 20),
                    padding: EdgeInsets.only(
                        top: 25, right: 30, bottom: 20, left: 38),
                    decoration: BoxDecoration(
                      color: Colors.indigo[50],
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    width: 125,
                    height: 100,
                    child: Text(
                      "${_counterA}",
                      style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 1, right: 20, bottom: 15, left: 20),
                    padding: EdgeInsets.only(
                        top: 25, right: 30, bottom: 20, left: 38),
                    decoration: BoxDecoration(
                      color: Colors.indigo[50],
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    width: 125,
                    height: 100,
                    child: Text(
                      "${_counterB}",
                      style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        top: 1, right: 20, bottom: 10, left: 40),
                    child: FlatButton(
                      color: Colors.indigoAccent,
                      textColor: Colors.white,
                      padding: EdgeInsets.only(
                          top: 10, right: 40, left: 40, bottom: 10),
                      onPressed: () {
                        _addA();
                      },
                      child: Text(
                        "+",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 1, right: 20, bottom: 10, left: 45),
                    child: FlatButton(
                      color: Colors.indigoAccent,
                      textColor: Colors.white,
                      padding: EdgeInsets.only(
                          top: 10, right: 40, left: 40, bottom: 10),
                      onPressed: () {
                        _addB();
                      },
                      child: Text(
                        "+",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        top: 1, right: 20, bottom: 10, left: 40),
                    child: FlatButton(
                      color: Colors.indigoAccent,
                      textColor: Colors.white,
                      padding: EdgeInsets.only(
                          top: 10, right: 43, left: 43, bottom: 10),
                      onPressed: () {
                        _minusA();
                      },
                      child: Text(
                        "-",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 1, right: 20, bottom: 10, left: 45),
                    child: FlatButton(
                      color: Colors.indigoAccent,
                      textColor: Colors.white,
                      padding: EdgeInsets.only(
                          top: 10, right: 43, left: 43, bottom: 10),
                      onPressed: () {
                        _minusB();
                      },
                      child: Text(
                        "-",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: Text('Enter New Team'),
            ),
          ],
        ),
      ),
    );
  }
}
