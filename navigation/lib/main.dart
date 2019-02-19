import 'package:flutter/material.dart';
import 'package:navigation/pages/about_screen.dart';
import 'package:navigation/pages/home_screen.dart';
import 'package:navigation/pages/store_screen.dart'; 

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int i = 0;
  var pages = [
    new HomeScreen(),
    new StoreScreen(),
    new AboutScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: pages[i],
      drawer: new AppNavigationDrawer(),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.photo_library),
            title: new Text('Blog'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.book),
            title: new Text('Library'),
          ),
          
        ],
        currentIndex: i,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            i = index;
          });
        },
      ),
    );
  }
}




class AppNavigationDrawer extends StatefulWidget {
  @override
  _AppNavigationDrawerState createState() => new 
  _AppNavigationDrawerState();
}

class _AppNavigationDrawerState extends State<AppNavigationDrawer> {
  @override
  Widget build(BuildContext context) {
   // final appState = AppState.of(context);
    return new Drawer(
      child: new ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          new DrawerHeader(
            child: new Text('MyNiT App'),
             decoration: new BoxDecoration(
             color: Colors.blue,
        ),
      ),
      new ListTile(
        title: new Text('Todo List'),
        leading: new Icon(Icons.list),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      new ListTile(
        title: new Text('Subscriptions'),
        leading: new Icon(Icons.subscriptions),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      new ListTile(
        title: new Text('Activity'),
        leading: new Icon(Icons.timelapse),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      new ListTile(
        title: new Text('Profile'),
        leading: new Icon(Icons.account_circle),
        onTap: () {
          Navigator.pop(context);
          /** Navigator.push(
            context,
            new MaterialPageRoute(
              builder: (context) => new AppState(
                    firebaseUser: appState.firebaseUser,
                    user: appState.user,
                    child: new ProfilePage(),
                  ),
            ),
          );*/
        },
      ),
      /**new ListTile(
        title: new Text('Logout'),
        leading: new Icon(Icons.exit_to_app),
        onTap: () {
          // Sign out user from app
          //FirebaseAuth.instance.signOut();
          Navigator.of(context).pushAndRemoveUntil(
              new MaterialPageRoute(builder: (context) => new LoginPage()),
              ModalRoute.withName(null));
        },
      ),*/
    ],
  ),
);
  }
}
