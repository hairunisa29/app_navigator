import 'package:flutter/material.dart';
import 'screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator Demo',
      theme: ThemeData(
        primaryColor: Colors.indigo,
      ),
      home: StartPage(title: 'SCORE COUNTER'),
    );
  }
}

class Team {
  final String team1;
  final String team2;

  Team(this.team1, this.team2);
}

class StartPage extends StatelessWidget {
  final String title;

  TextEditingController team1Controller = TextEditingController();
  TextEditingController team2Controller = TextEditingController();

  StartPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //title: Text(title),
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
              width: 256,
              margin: const EdgeInsets.only(bottom: 8),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 200),
                    child: Text(
                      "Team 1",
                      style: TextStyle(
                        color: Colors.indigoAccent,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter The First Group Name',
                      hintStyle: TextStyle(fontSize: 12.0, color: Colors.grey),
                      border: OutlineInputBorder(),
                    ),
                    controller: team1Controller,
                  ),
                ],
              ),
            ),
            Container(
              width: 256,
              margin: const EdgeInsets.only(bottom: 24),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20, right: 200),
                    child: Text(
                      "Team 2",
                      style: TextStyle(
                        color: Colors.indigoAccent,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter The Second Group Name',
                      hintStyle: TextStyle(fontSize: 12.0, color: Colors.grey),
                      border: OutlineInputBorder(),
                    ),
                    controller: team2Controller,
                  ),
                ],
              ),
            ),
            FlatButton(
              color: Colors.indigoAccent,
              textColor: Colors.white,
              padding:
                  EdgeInsets.only(top: 20, right: 100, left: 100, bottom: 20),
              onPressed: () {
                _navigateHome(context);
              },
              child: Text(
                "START",
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _navigateHome(BuildContext context) async {
    Team team = new Team(team1Controller.text, team2Controller.text);
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomePage(
                  team: team,
                )));
    print(result);
  }
}
