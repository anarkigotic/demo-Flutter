import 'package:http/http.dart' as http;
import 'dart:convert';
class Todo{
  String id;
  String name;
  String duedate;
  String description;
  Todo({this.id,this.name,this.duedate,this.description});
  factory Todo.fromJson(Map<String,dynamic> json){
    return Todo(
      id : json['id'],
      name : json['name'],
      duedate:json['duedate'],
      description:json['description']
    );
  }
}

Future<List<Todo>> fetchTodos(http.Client client) async{
  final response = await client.get('http://192.168.1.6:3000/todos'  '');
  if(response.statusCode == 200){
    Map<String,dynamic> mapResponse = json.decode(response.body);
    if(mapResponse['ok']){
      final todos = mapResponse['data'].cast<Map<String,dynamic>>();
      final listaTodos = await todos.map<Todo>((json){
            return Todo.fromJson(json);
      }).toList();
      return listaTodos;
    }else{
      return [];
    }
  }else{
    throw Exception("No funciona el servicio");
  }
}