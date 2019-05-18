import 'package:flutter/material.dart';
import 'contact.dart';

void main(){
  runApp(
    new MaterialApp(
      title: 'My app',
      home: new Scaffold(
        appBar: AppBar(
          title: Text("Mi aplicacion"),
        ),
        body: Contact()
      ),
    )
  );
}