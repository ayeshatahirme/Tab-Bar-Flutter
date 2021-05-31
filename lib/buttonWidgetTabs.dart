import 'dart:async';
import 'dart:convert';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ButtonAppBar extends StatefulWidget {
  @override
  _ButtonAppBarState createState() => _ButtonAppBarState();
}

class _ButtonAppBarState extends State<ButtonAppBar> {
  String _valueChoose;
  double _volume = 0.0;
  List listItem = [ "1990", "1996", "2000", "2012", "2016"];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Button Widgets'),
          centerTitle: true,
          backgroundColor: Colors.teal[900],
          elevation: 5,
          shadowColor: Colors.grey[300],
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.text_fields_rounded),
              ),
              Tab(
                icon: Icon(Icons.arrow_drop_down_circle),
              ),
              Tab(
                icon: Icon(Icons.volume_up),
              ),
              Tab(
                icon: Icon(Icons.beach_access_sharp),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: TextButton(
                child: Text(
                  "Text Button",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 20,
                    ),
                ),
                onPressed: () {},
              ),
            ),
            Center(
              child: DropdownButton(
                hint: Text("Select from drop down button"),
                //isExpanded: true,
                value: _valueChoose,
                items: listItem.map((valueItem){
                  return DropdownMenuItem(
                  value: valueItem,
                  child: Text(valueItem),
                  );
                }).toList(),
                onChanged: (newVal){
                    this.setState(() {                
                      _valueChoose = newVal;
                  });
                },           
            ),
               
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(
                      Icons.volume_up, 
                      size: 30,
                      ),
                    tooltip: 'Increase volume by 10',
                    color: Colors.pink,
                    onPressed: () {
                      setState(() {
                        _volume += 10;
                      });
                    },
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Volume : $_volume',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.pink,
                    ),
                    )
                ],
              ),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  primary: Colors.pink,
                  minimumSize: Size(100, 50),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                  ),
                ),
                onPressed: () { },
                child: Text('Elevated Button'),
              ),
            ),
            Center(
              child: FloatingActionButton.extended(
                onPressed: () {
                  // Add your onPressed code here!
                },
                label: const Text('Approve'),
                icon: const Icon(Icons.thumb_up),
                backgroundColor: Colors.pink,
              ),
            )
          ]
        )
      ),
    );
  }
}
