import 'package:flutter/material.dart';
import 'chartScreen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TestApp',
      home: MyHomePage(),
    ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TestApp'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text(
                "TestApp",
                textAlign: TextAlign.justify,
                textScaleFactor: 2.0,
              ),
            ),
            ListTile(
              title: Text("First"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Second"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChartScreen()),
                );
                print("object");
              },
            )
          ],
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: TabBar(
                tabs: [
                  Tab(child: Text('Users')),
                  Tab(child: Text('ToDos')),
                ],
                indicatorColor: Colors.white,
              ),
            ),
            body: TabBarView(
              children: [Text('data'), Text('data')],
            )),
      ),
    );
  }
}
