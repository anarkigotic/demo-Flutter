import 'package:flutter/material.dart';

void main(){
  runApp(
    new MaterialApp(
      home: MyText()
    )
  );
}
class MyText extends StatefulWidget{
  @override
  _MyTextState createState() => new _MyTextState();
}

class _MyTextState extends State<MyText>{

String inputValue = "";  
final TextEditingController controller = new TextEditingController();

void addtext(String text){
  setState(() {
    inputValue += '\n'+text;
    controller.text ='';
  });
}
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(
        title:new Text(" EditText ",style: new TextStyle(color:Colors.white,fontSize: 30.0),),
        backgroundColor: Colors.redAccent,
      ),
      body: new Container(
        child : new Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:<Widget>[
              new Text("EditText"),
              new TextField(
                decoration: new InputDecoration(hintText: 'Ingresa el texto aca'),
                onSubmitted: (String text){
                  addtext(text);
                },
                controller: controller,
              ),
              new Text(inputValue)

          ]
        )
          
        )
      ),
    );

  }
}

