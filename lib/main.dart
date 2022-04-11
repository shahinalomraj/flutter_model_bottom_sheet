import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(onPressed: () {
          showModalBottomSheet(context: context, builder: (context){
            return Container(
              height: MediaQuery.of(context).size.height * 0.50,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Access alarm"),
                    subtitle: Text("One"),
                    trailing: Icon(Icons.access_alarm),
                  ),
                  ListTile(
                    title: Text("Mobile off"),
                    subtitle: Text("Two"),
                    trailing: Icon(Icons.mobile_off),
                  ),
                  ListTile(
                    title: Text("Keyboard"),
                    subtitle: Text("Three"),
                    trailing: Icon(Icons.keyboard),
                  ),

                ],
              ),
            );
          });
        },child: Text("Click Me"),),
      ),
    );
  }
}
