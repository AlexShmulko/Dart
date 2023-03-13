import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Counter"),
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 25, fontFamily: "DelaGothicOne"),
        ),
        body: Center(
          child: CounterWidget(),
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CounterWidgetState();
  }
}

class _CounterWidgetState extends State<CounterWidget> {
  late int _counter;

  @override
  void initState() {
    _counter = 50;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "Tap '-' to decrement",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    icon: Image.asset("assets/icons/2.png"),
                    padding: EdgeInsets.all(40),
                    onPressed: () {
                      setState(() {
                        _counter -= 1;
                        //_updateProgress();
                      });
                    },
                  ),
                  Text(
                    "$_counter",
                    style: TextStyle(fontSize: 30, fontFamily: "DelaGothicOne"),
                  ),
                  IconButton(
                    icon: Image.asset("assets/icons/1.png"),
                    padding: EdgeInsets.all(40),
                    onPressed: () {
                      setState(() {
                        _counter += 1;
                      });
                    },
                  ),
                ],
              ),
              Text(
                "Tap '+' to increment",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
