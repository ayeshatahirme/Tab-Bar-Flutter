import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ViewRecords extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Record'),
        centerTitle: true,
        backgroundColor: Colors.pink[900],
        elevation: 5,
        shadowColor: Colors.grey[300],
      ),
      body: Container(
      ),
    );
  }
}