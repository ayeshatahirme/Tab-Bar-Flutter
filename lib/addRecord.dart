import 'dart:async';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddRecord extends StatefulWidget {
  @override
  _AddRecordState createState() => _AddRecordState();
}


class _AddRecordState extends State<AddRecord> {
 
  @override
  Widget build(BuildContext context) {
  
        return Scaffold(
        appBar: AppBar(
              title: Text('Add Record'),
              centerTitle: true,
              backgroundColor: Colors.pink[900],
              elevation: 5,
              shadowColor: Colors.grey[300],
            ),
            body: Center(
        ),
	  );
  }
}
