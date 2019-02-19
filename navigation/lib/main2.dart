import 'package:flutter/material.dart';


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
	MyHomePage({key key, this.title}) : super(key: key);
	final String title;

	@verride
	_MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
	int i = 0;
	var pages = [
		new HomeScreen(),
		new StoreScreen(),
		new Account(),
		new Contact(),
	];

	@override
	Widget build(BuildContext context) {
		return new Scaffold(
			body: pages[i],
			drawer: new AppNavigationDrawer(),
			bottomNavigationBar: new BottomNavigationBar(
				items: [
					new BottomNavigationBarItem(
						icon: new Icon(Icons.Home),
						title: new Text('Home'),
					),
					new BottomNavigationBarItem(
						icon: new Icon(Icons.Store),
						title: new Text('Store'),
					),
					new BottomNavigationBarItem(
						icon: new Icon(Icons.Account),
						title: new Text('Account'),
					),
					new BottomNavigationBarItem(
						icon: new Icon(Icons.Contact),
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
				}
				)
			);
	}
}

class AppNavigationDrawer extends StatefulWidget {
	@override
	_AppNavigationDrawerState create() => new _AppNavigationDrawerState();
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