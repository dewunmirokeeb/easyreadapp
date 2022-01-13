import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Easy Read App',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,

              ),
            ),
          ),
        ),

        body: const App(),
        ),
    );
  }
}
class App extends StatefulWidget {
   const App({ Key? key }) : super(key: key);

  @override
  _AppState createState() => _AppState();

   
}

class _AppState extends State<App> {

  double fontsize = 30;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: <Widget>[
    
          Expanded(
            child: TextField(
              textInputAction: TextInputAction.done,
              style: TextStyle(fontSize: fontsize),
              maxLines: null,
            ),
          ),
    
          Slider(
            value: fontsize, 
            onChanged: (sizechange){
              setState(() {
                fontsize = sizechange;
              });
    
            },
            min: 30,
            max: 200,
            
            ),
    
    
    
    
        ],
        ),
      ),
    );
  }
}
