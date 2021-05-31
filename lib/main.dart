import 'dart:async';
import 'dart:convert';
import 'buttonWidgetTabs.dart';
import 'inputSelectionWidgetTabs.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

@override
_HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
@override
Widget build(BuildContext context) {

	return Scaffold(
    appBar: AppBar(
          title: Text('Tab Properties'),
          centerTitle: true,
          backgroundColor: Colors.teal[900],
          elevation: 5,
          shadowColor: Colors.grey[300],
        ),
        body: Center(          
          child: SizedBox(
              width: 300,
              height: 320,
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children:[
                    SizedBox(
                        height: 30,
                      ),
                      Text('Assignment 8',
                      style: TextStyle(
                        height: 3,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text('Used tab bar, tab view and tab controller properties.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        wordSpacing: 1,
                        color: Colors.grey[700],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                        ),
                  ],
                ),
                ),
              )
            
          ),      
          drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Column(
                  children: [
                    SizedBox(
                        height: 10,
                      ),
                    Padding(padding: EdgeInsets.all(1.0),
                    ),
                    SizedBox(
                        height: 30,
                    ),
                    Text('Ayesha Tahir',
                    style: TextStyle(
                      height: 2,
                      color: Colors.white,
                      fontSize: 16,
                    )
                    ),
                    Text('ayeshatahirme@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    )
                    ),
                  ],
                ),
                
                decoration: BoxDecoration(
                  color: Colors.teal[900],
                ),
                
                ),
                ListTile(
                  leading: new Icon(Icons.smart_button),
                  title: Text('Button Widgets'),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ButtonAppBar()));
                  }
                ),
                ListTile(
                  leading: new Icon(Icons.list),
                  title: Text('Input & Selection Widgets'),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => InputSelectionAppBar()));
                   // Navigator.pop(context);
                  }
                ),
            ]
          ),
        ),  
	  );
  }
}
