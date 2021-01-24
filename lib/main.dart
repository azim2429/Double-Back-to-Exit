import 'package:flutter/material.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: DoubleBackToCloseApp(
          child: MyHomePage(title: 'Demo of Double back exit'),
          snackBar: const SnackBar(
            content: Text('Tap back again to exit'),
            backgroundColor: Colors.red,
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Stack(
        children: <Widget>[
          Container(height: 40),
          Positioned(
            child: Center(
              child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width - 100,
                  child: Card(
                    color: Colors.white,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 120,
                        ),
                        Text("A simple demonstration of",
                            style: TextStyle(
                                fontSize: 14, fontStyle: FontStyle.normal)),
                        Text("Double Back to Close the App",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 40,
                        ),
                        Text("You can find the whole source code on",
                            style: TextStyle(
                                fontSize: 12, fontStyle: FontStyle.normal)),
                        Text("github.com/azim2429",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 50,
                        ),
                        Text("You can find the blogpost on",
                            style: TextStyle(
                                fontSize: 12, fontStyle: FontStyle.normal)),
                        Text("medium.com/azim2429",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  )),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 80.0),
              child: Container(
                height: 200,
                width: 200,
                child: CircleAvatar(
                  backgroundColor: Colors.red.shade500,
                  backgroundImage: NetworkImage(
                    "https://medianasms.com/wp-content/uploads/2021/01/cherry-689.png",
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
