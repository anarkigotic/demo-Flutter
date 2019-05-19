import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main(){
  runApp(
    new MaterialApp(
      home: Words(),
    )
  );
}

class Words extends StatefulWidget {
  _WordsState createState() => _WordsState();
}

class _WordsState extends State<Words> {

  final words = <WordPair>[];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Lista Infinita"),
        centerTitle: true,
      ),
      body:  wordsBuild() ,
    );
  }
  
  Widget rowWord(WordPair word){

    return new ListTile(
      title: new Text(word.asPascalCase),
    );

  }

  Widget wordsBuild(){
      return new ListView.builder(
        itemBuilder: (context,i){

          if(i.isOdd) return new Divider();
          final index =  i~/2;

          if(index >= words.length){
            words.addAll(generateWordPairs().take(10));
          }

          return rowWord(words[index]);

        },
      );
  }

}