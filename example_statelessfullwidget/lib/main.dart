import 'package:flutter/material.dart';

void main(){
  runApp(
    new MaterialApp(
      home:MyButton()
    )
  );
}

class MyButton extends StatefulWidget{

  @override
  _MyButtonState createState() => new _MyButtonState();
  

}

class _MyButtonState extends State<MyButton>{
  String text = "Juan David Jerex";
  int index = 0;
  List<String> alerts = [
    'Flutter','es','genial'
  ];
  void eventButton(){
      setState((){
        text = alerts[index];
        index = index < 2 ? index+1 : 0;
        // if(index < 2 ){
        //   index = index +1;
        // }else{
        //   index = 0;
        // }
      });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title:new Text("Hola mundo"),
        backgroundColor: Colors.orange,
      ),
      body: new Center(
      child: new Container(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            new Text(text,style: new TextStyle(color:Colors.black,fontSize: 60.0)),
            new Padding(padding: new EdgeInsets.all(10.0),),
            new RaisedButton(
                child: new Text("presiona aqui",style: new TextStyle(color:Colors.white),),
                color: Colors.blue,
                onPressed: eventButton,
            )

          ]
        ),
      )

      )
    );
  }

}