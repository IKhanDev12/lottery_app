import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
  Random random= Random();
  int x=0;
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Lottery App')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('Lottery winning number is 4')),
           SizedBox(height: 25,),
           Container(
             height: 250,
             width: 250,
             decoration: BoxDecoration(
               color:Colors.blueGrey.withOpacity(.4),
               borderRadius: BorderRadius.circular(12),
             ),
             child: Padding(
               padding: const EdgeInsets.all(15.0),
               child: x==5 ?
               Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Icon(Icons.done_all_rounded,color: Colors.green,size: 35,),
                   SizedBox(height: 15,),
                   Text('Congratulations !! \n You win the lottery \n Your number is $x',textAlign: TextAlign.center,)
                 ],
               ) :
               Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                    Icon(Icons.error,color: Colors.red,size: 35,),
                   SizedBox(height: 15,),
                   Text('Better luck next time your number is $x \n try again',textAlign: TextAlign.center,)
                 ],
               ),
             ),
           ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
         onPressed: (){

           x=random.nextInt(6);
          print(x);
          setState(() {});
         },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}


