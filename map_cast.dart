import 'dart:convert';

class Task{
  String name;
  String duedate;
  String description;
  Task({this.name,this.duedate,this.description});
  factory Task.fromJson(Map<String,dynamic> json){
    return Task(
        name : json['name'],
        duedate:json['duedate'],
        description:json['description']
    );
  }
}

void main(){

  var taskp = """
  {
    "status":200,
    "ok":true,
    "data": [
      {
        "id":1,
        "name":"juan",
        "duedate": "2018-03-23",
        "description":"esto es una descripcion btreve"

      },
      {
        "id":2,
        "name":"david",
        "duedate": "2018-02-20",
        "description":"esto es una descripcion btreve"
      },
      {
        "id":3,
        "name":"angela",
        "duedate": "2018-02-20",
        "description":"esto es una descripcion btreve"
      }
    ]

  } """;

  Map<String,dynamic> task = json.decode(taskp);

  if(task["status"] == 200){
    if(task["ok"]){
      final All = task['data'].cast<Map<String,dynamic>>();
      final taskAll = All.map<Task>((tsk){
        return Task.fromJson(tsk);

      }).toList();
      print(taskAll[0].name);
    }
  }

//  Map<String,dynamic> persona = {
//        'nombre':'Carlos',
//        'edad':12,
//        'soltero': true
//  };
//  print(persona['nombre']);
//
//  Map<String,dynamic> json = {"data":["a","b","c"]};
//
//  List<String> words = (json["data"] as List<String>).map((s)=>s.toUpperCase()).toList();
//
//  print(words.length);
//  print(words[1]);


}