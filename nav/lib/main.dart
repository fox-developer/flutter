

import 'package:flutter/material.dart';
import 'package:nav/pages/home_screen.dart';
import 'package:nav/pages/store_screen.dart';
import 'package:nav/pages/account_screen.dart';
import 'package:nav/pages/contact_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	// This widget is the root of the application.
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
		title: 'Flutter Demo',
		theme: ThemeData(
			// This is the theme of the application.
			// primarySwatch: Colors.brown[900],
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
			// drawer: new AppNavigationDrawer(),
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