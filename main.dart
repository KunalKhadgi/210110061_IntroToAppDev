import 'dart:ffi';

import 'package:flutter/material.dart';
void main() {
  runApp(CounterApp());
}

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Budget Tracker',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;
  var _value1 = TextEditingController();
  var _value2 = TextEditingController();
  var _value3 = TextEditingController();
  var _value4 = TextEditingController();


  void _update(){

    dynamic _temp1 = _value1;
   // print(_temp1.runtimeType);
  //  _counter +=

  }

  void _incrementCounter(int value) {
    setState(() {
      _counter += value;
      // return null;
    });
    // return _counter;

  }

  void _decrementCounter() {
    setState(() {
      _counter -= 1;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Budget Tracker',)),
      ),
      body:

    Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[


              //  Icon


              const Padding(
                padding: EdgeInsets.all(30),
                child: Icon(
                  Icons.person,
                  size: 90.0,
                ),
              ),


              //  Total: $_counter


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Total: \$',
                        style: TextStyle(fontSize: 30, letterSpacing: 2, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '$_counter',
                        style: TextStyle(fontSize: 30, letterSpacing: 2, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),


             //  Expense  1


             Column (
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 157,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration:  InputDecoration(
                            hintText: 'Reason',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),

                    SizedBox(width: 20.0),

                    Container(
                      width: 85,
                      child: TextField(
                          keyboardType: TextInputType.number,
                          controller: _value1,
                          decoration:  InputDecoration(
                            hintText: 'Amount',
                            //textAlign: ,
                            border: OutlineInputBorder(),
                      )
                    )
                    ),
                    Container(width: 10,),
                    IconButton(onPressed: _update, icon: Icon(Icons.adb_outlined),),
                  //  IconButton(onPressed: {_counter += _value}, icon: )
                ],),
              ],
            ),                    SizedBox(height: 20.0),


              //  Expense 2


              Column (
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 157,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration:  InputDecoration(
                            hintText: 'Reason',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),

                    SizedBox(width: 20.0),

                    Container(
                      width: 85,
                      child: TextField(
                          keyboardType: TextInputType.number,
                          controller: _value2,
                          decoration:  InputDecoration(
                            hintText: 'Amount',
                            //textAlign: ,
                            border: OutlineInputBorder(),
                      )
                    )
                    ),
                    Container(width: 10,),
                    IconButton(onPressed: _update, icon: Icon(Icons.adb_outlined),),
                  //  IconButton(onPressed: {_counter += _value}, icon: )
                ],),
              ],
            ),                    SizedBox(height: 20.0),


              //   Expense 3


              Column (
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 157,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration:  InputDecoration(
                            hintText: 'Reason',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),

                    SizedBox(width: 20.0),

                    Container(
                      width: 85,
                      child: TextField(
                          keyboardType: TextInputType.number,
                          controller: _value3,
                          decoration:  InputDecoration(
                            hintText: 'Amount',
                            //textAlign: ,
                            border: OutlineInputBorder(),
                      )
                    )
                    ),
                    Container(width: 10,),
                    IconButton(onPressed: _update, icon: Icon(Icons.adb_outlined),),
                  //  IconButton(onPressed: {_counter += _value}, icon: )
                ],),
              ],
            ),                    SizedBox(height: 20.0),


              //  Expense 4


              Column (
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 157,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration:  InputDecoration(
                            hintText: 'Reason',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),

                    SizedBox(width: 20.0),

                    Container(
                      width: 85,
                      child: TextField(
                          keyboardType: TextInputType.number,
                          controller: _value4,
                          decoration:  InputDecoration(
                            hintText: 'Amount',
                            //textAlign: ,
                            border: OutlineInputBorder(),
                      )
                    )
                    ),
                    Container(width: 10,),
                    IconButton(onPressed: _update, icon: Icon(Icons.adb_outlined),),
                  //  IconButton(onPressed: {_counter += _value}, icon: )
                ],),
              ],
            )

            ],
          ),
        ),
      ),





      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}