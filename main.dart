import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int note=0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('icon et flat button'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          FlatButton(
            onPressed: () {
              debugPrint('------button flat is ok');
            },
            child: Text('button flat', style: TextStyle(fontSize:20)),
              color: Colors.blue,
              textColor: Colors.white,

          ),
          IconButton(
            icon: Icon(Icons.thumb_up,color:Colors.deepOrange,size:40,),
            tooltip: "J'aime",
            onPressed: (){
              setState ( () {
                note+=1;
    });
              }
    ),
            Text('votre opinion : $note' , style: TextStyle(color: Colors.blueAccent,fontSize:20),

          ),

          IconButton(
              icon: Icon(Icons.thumb_down,color:Colors.amberAccent,size:40,),
              tooltip: "J'aime pas",
              onPressed: (){
                setState ( () {
                  note-=1;
                });
              }
          ),


        ],
      ),
    );
  }


}

