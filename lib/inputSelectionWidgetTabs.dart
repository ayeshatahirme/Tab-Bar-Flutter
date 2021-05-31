import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class InputSelectionAppBar extends StatefulWidget {
  @override
  _InputSelectionAppBarState createState() => _InputSelectionAppBarState();
}

class _InputSelectionAppBarState extends State<InputSelectionAppBar> {
  // Declaring variables
  bool valuefirst = false;
  DateTime currentDate = DateTime.now();
  String colorVal = '';
  double _currentSliderValue = 20;
  bool isSwitched = false; 

  // Function for date picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate)
      setState(() {
        currentDate = pickedDate;
      });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 6,

      child: Scaffold(
        appBar: AppBar(
          title: Text('Input & Selection Widgets'),
          centerTitle: true,
          backgroundColor: Colors.teal[900],
          elevation: 5,
          shadowColor: Colors.grey[300],
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.check_box_outlined),
              ),
              Tab(
                icon: Icon(Icons.access_time_outlined),
              ),
              Tab(
                icon: Icon(Icons.radio_button_checked),
              ),
              Tab(
                icon: Icon(Icons.dashboard),
              ),
              Tab(
                icon: Icon(Icons.toggle_off_outlined),
              ),
              Tab(
                icon: Icon(Icons.text_fields),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Check Box",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        ),
                      Checkbox(
                        checkColor: Colors.white,
                        activeColor: Colors.teal,
                        value: valuefirst, 
                        onChanged: (bool value) {
                          setState((){
                            this.valuefirst = value;
                            }
                          );
                        }
                      )
                    ]
                  )
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(currentDate.toString()),
                  SizedBox(
                    height: 20.0,
                  ),
                  RaisedButton(
                    onPressed: () => _selectDate(context),
                    child: Text('Select date'),
                  ),
                ],
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                    value: 'teal',
                    groupValue: colorVal,
                    onChanged: (val){
                      colorVal = val;
                      setState(() {
                      });
                    },
                  ),
                  Text(
                    'Radio Button',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    )
                ]
              )
            ),
            Center(
              child: Slider(
                value: _currentSliderValue,
                min: 0,
                max: 100,
                divisions: 10,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Switch(
                  value: isSwitched,
                  onChanged: (value){
                    setState(() {
                      isSwitched=value;
                      print(isSwitched);
                    });
                  },
                  activeTrackColor: Colors.green,
                  activeColor: Colors.teal,
                ),
                  SizedBox(height: 15.0,),  
                  Text(
                    'Toggle Switch', 
                    style: TextStyle(
                      color: Colors.teal,  
                      fontSize: 20.0
                      ),
                    ) 
                ]
              )
            ),
            Center(
              child: Column(  
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Padding(  
                    padding: EdgeInsets.all(15),  
                    child: TextField(  
                      decoration: InputDecoration(  
                        border: OutlineInputBorder(),  
                        labelText: 'Username',  
                        hintText: 'Enter Username',  
                      ),  
                    ),  
                  ),  
                  Padding(  
                    padding: EdgeInsets.all(15),  
                    child: TextField(  
                      obscureText: true,  
                      decoration: InputDecoration(  
                        border: OutlineInputBorder(),  
                        labelText: 'Password',  
                        hintText: 'Enter Password',  
                      ),  
                    ),  
                  ),  
                  RaisedButton(  
                    textColor: Colors.white,  
                    color: Colors.teal,
                    child: Text('OK'),  
                    onPressed: (){},  
                  )  
                ],  
              )
            )
          ]
        )
      ),
    );
  }
}
