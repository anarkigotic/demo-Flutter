import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      title: "nombre de mi aplicacion", 
      home: MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Hola mundo desde mac'),
        ),
        body: new Contenido()
      );
  }
}


class Contenido extends StatelessWidget{
  final double textSize = 40.0;
  final double iconSize = 40.0;
  @override
  Widget build(BuildContext context){
    return new Container(
    child:new Center(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget>[
          new Item( 
            title:new Text("I love flutter", style: new TextStyle(color: Colors.grey,fontSize: 30.0)),
            icon:new Icon(Icons.favorite, size: iconSize, color: Colors.red,)
            ),
          new Item(
            title:new Text("I like this video",style: new TextStyle(color: Colors.grey,fontSize: 30.0)),
            icon:new Icon(Icons.face, size: iconSize, color: Colors.blue)
            ),
          new Item(
            title:new Text("Next video",style: new TextStyle(color: Colors.grey,fontSize: 30.0)),
            icon:new Icon(Icons.video_call, size: iconSize,color: Colors.brown)
            ),
        ]
      )
    )
    );
  }
}

class Item extends StatelessWidget{
  final Widget title;
  final Widget icon;

  Item({this.title,this.icon});

  @override
  Widget build(BuildContext context){
    return  new Container(
      padding: const EdgeInsets.only(bottom: 3.0),
      child:new Card(
        child : new Container(
          padding: const EdgeInsets.all(20.0),
          child: new Column(
          children: <Widget>[
            this.title,
            this.icon
          ],
        ),
        )
    )
    );
  }
}