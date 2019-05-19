
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'models/todo.dart';


class TodoList extends StatelessWidget {
  final List<Todo> todos;
  TodoList({Key key,this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
          return GestureDetector(
            child: Container(
              padding: EdgeInsets.all(10.0),
              color: index %2 == 0 ? Colors.greenAccent: Colors.cyan,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(todos[index].name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                  new Text('Date: ${todos[index].duedate}', style: TextStyle(fontSize: 16.0), )
                ],
              ),
            ),
            
            onTap: (){

            },
          );
    },
    itemCount: todos.length,
    );
  }
}

class TodoScreen extends StatefulWidget {

  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Scaffold(
        appBar: AppBar(
          title:  Text("Fetch Todos from Resfull  Api"),
        ),
        body: FutureBuilder(
          future:fetchTodos(http.Client()),
          builder:(context,snapshot){
            if(snapshot.hasError){
              print(snapshot.error);
            }
            return snapshot.hasData ? TodoList(todos: snapshot.data):Center(child: CircularProgressIndicator(),);
          }
          ),
      ),
    );
  }
}