import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	// This widget is the root of the application.
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
		title: 'Flutter Demo',
		theme: ThemeData(
			// This is the theme of the application.
			primarySwatch: Colors.brown[900],
			),
		home: MyHomePage(
			title: 'M special offers only for you'
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
	int i = 0;
	var pages = [
		new HomeScreen(),
		new StoreScreen(),
		new AccountScreen(),
		new ContactScreen(),
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
						icon: new Icon(Icons.store),
						title: new Text('Store'),
					),
					new BottomNavigationBarItem(
						icon: new Icon(Icons.account_circle),
						title: new Text('Account'),
					),
					new BottomNavigationBarItem(
						icon: new Icon(Icons.contacts),
						title: new Text('Contact'),
					),

				],
				currentIndex: i,
				type: BottomNavigationBarType.fixed,
				onTap: (index) {
					setState((){
						i = index;
					}
						);
					}
				
				
			),
    );
    }
}

// AppNavigationDrawer

class AppNavigationDrawer extends StatefulWidget {
	@override
	_AppNavigationDrawerState create() => new _AppNavigationDrawerState();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }
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
						child: new Text('MyNit App'),
						decoration: new BoxDecoration(
							color: Colors.brown[900],
						),
					),
				],
			),
		);
	}
}

// HomeScreen

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {


      



      // WillPopScope

    @override
  Widget build(BuildContext context){

    
    return WebviewScaffold(
      appBar: AppBar(
        title: Text("             McArby's Cill & Grill",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.brown[900],
      ),
        url: "https://mcarbys.com/",
        withLocalStorage: true,
        hidden: true,
        scrollBar: false,
        
        appCacheEnabled: true,
        withJavascript: true,
      );
    
  }
}

// StoreScreen
class StoreScreen extends StatefulWidget {
  @override
  StoreScreenState createState() {
    return StoreScreenState();
  }
}

class StoreScreenState extends State<StoreScreen> {


      



      // WillPopScope

    @override
  Widget build(BuildContext context){

    
    return WebviewScaffold(
      appBar: AppBar(
        title: Text("             McArby's Cill & Grill",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.brown[900],
      ),
        url: "https://mcarbys.com/",
        withLocalStorage: true,
        hidden: true,
        scrollBar: false,
        
        appCacheEnabled: true,
        withJavascript: true,
      );
    
  }
}

// AccountScreen
class AccountScreen extends StatefulWidget {
  @override
  AccountScreenState createState() {
    return AccountScreenState();
  }
}

class AccountScreenState extends State<AccountScreen> {


      



      // WillPopScope

    @override
  Widget build(BuildContext context){

    
    return WebviewScaffold(
      appBar: AppBar(
        title: Text("             McArby's Cill & Grill",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.brown[900],
      ),
        url: "https://mcarbys.com/",
        withLocalStorage: true,
        hidden: true,
        scrollBar: false,
        
        appCacheEnabled: true,
        withJavascript: true,
      );
    
  }
}

// AboutScreen
class ContactScreen extends StatefulWidget {
  @override
  ContactScreenState createState() {
    return ContactScreenState();
  }
}

class ContactScreenState extends State<ContactScreen> {


      



      // WillPopScope

    @override
  Widget build(BuildContext context){

    
    return WebviewScaffold(
      appBar: AppBar(
        title: Text("             McArby's Cill & Grill",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.brown[900],
      ),
        url: "https://mcarbys.com/",
        withLocalStorage: true,
        hidden: true,
        scrollBar: false,
        
        appCacheEnabled: true,
        withJavascript: true,
      );
    
  }
}
