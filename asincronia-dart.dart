//import 'dart:async';
//
//StreamSubscription periodicSub;
//
//void main() {
//  periodicSub = new Stream.periodic(const Duration(milliseconds: 500), (v) => v)
//      .take(10)
//      .listen((count) => print('tick $count'));
//}

import 'dart:async';

void main() async{

  // =========== Forma dos ==========
  String data1 = await fuin1();
  String data2 = await fuin2();
  String data3 = await fuin3();
  print(data1);
  print(data2);
  print(data3);



// ======= Forma uno =======
  fuin1().then((data1){
      print(data1);
      fuin2().then((data2){
        print(data2);
        fuin3().then((data3){
          print(data3);
        });
      });
  });
}


Future<String>  fuin1(){
  const timer = Duration(seconds: 3);
  return Future.delayed(timer,(){
      return "Funcion uno";
  });
}

Future<String> fuin2(){
  const timer = Duration(seconds: 2);
  return Future.delayed(timer,(){
      return "Funcion dos";
});
}

Future<String> fuin3(){
  const timer = Duration(seconds: 1);
  return Future.delayed(timer,(){
      return "Funcion trues";
});
}


Future<String> httpGet(String url){
  return Future.delayed(new Duration(seconds: 4),(){
          return "Hola mundo";
  });
}