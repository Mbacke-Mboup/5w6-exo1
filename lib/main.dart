import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _indexLapin = Random().nextInt(4);
  int _flaps = 0;
  int _pafs = 0;



  @override
  Widget build(BuildContext context) {
    var b1 = MaterialButton(
      onPressed: (){},
      child: Text("Lapin"),
    );
    var b2 = MaterialButton(
      onPressed: (){},
      child: Text("Taupe"),
    );
    var b3 = MaterialButton(
      onPressed: (){},
      child: Text("Taupe"),
    );
    var b4 = MaterialButton(
      onPressed: (){},
      child: Text("Taupe"),
    );
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,


        title: Center(child: Text("Tappe Le Lapin")),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Pafs  : "+ this._pafs.toString(),
                style: TextStyle(color: Colors.green, fontSize: 20),
                ),
                Text("Flops  : "+ this._flaps.toString(),
                  style: TextStyle(color: Colors.red, fontSize: 20)
                ),

              ],
            ),
            const Text(
              'Tape le lapin',
                style: TextStyle( fontSize: 40, fontWeight: FontWeight.w900)
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                b1,
               b2
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                b3,
                b4
              ],
            )
          ],
        ),
      ),
      
    );
  }
}

