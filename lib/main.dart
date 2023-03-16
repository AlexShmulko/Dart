import 'package:flutter/material.dart';

void main() {
  runApp(const MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Weather Forecast",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
          titleTextStyle:
              const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        body: buildBody(),
        backgroundColor: Colors.red,
      ),
    );
  }
}

Widget buildBody() {
  return Column(
    children: <Widget>[
      Column(
        children: <Widget>[
          _block1(),
          _temperature(),
          _status(),
          _litleText(),
          const SizedBox(
            height: 120,
            width: 385,
            child: BodyListView(),
          ),
        ],
      ),
    ],
  );
}

SizedBox _block1() {
  return SizedBox(
    //width: 412,
    height: 170,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(20),
          //padding: const EdgeInsets.all(20),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(
                Icons.search,
                size: 25,
                color: Colors.white,
              ),
              Text(
                "   Enter City Name",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          //width: 412,
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                "Tomsk Oblast, RU",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                ),
              ),
              Text(
                "Wednesday, Mar 15, 2023",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Row _temperature() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Icon(
            Icons.wb_sunny,
            color: Colors.white,
            size: 65,
          ),
        ],
      ),
      SizedBox(
        width: 20,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "15 °F",
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 40,
                    fontWeight: FontWeight.w300),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                "LIGHT SNOW",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

SizedBox _status() {
  return const SizedBox(
    height: 161,
    width: 412,
    child: Column(
      children: <Widget>[
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                ),
                Text(
                  "5",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white70,
                  ),
                ),
                Text(
                  "km/hr",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                ),
                Text(
                  "3",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white70,
                  ),
                ),
                Text(
                  "%",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                ),
                Text(
                  "20",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white70,
                  ),
                ),
                Text(
                  "%",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
      ],
    ),
  );
}

Text _litleText() {
  return const Text(
    "7-DAY WEATHER FORECAST",
    style: TextStyle(
      fontSize: 17,
      color: Colors.white70,
    ),
  );
}

class BodyListView extends StatelessWidget {
  const BodyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return _myListView();
  }
}

Widget _myListView() {
  return ListView(
    shrinkWrap: true,
    scrollDirection: Axis.horizontal,
    itemExtent: 160,
    children: const <Widget>[
      Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Colors.white30,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 8,
            ),
            Text(
              "Friday",
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "6 °F ",
                  style: TextStyle(color: Colors.white, fontSize: 38),
                ),
                Icon(
                  Icons.wb_sunny,
                  color: Colors.white,
                  size: 40,
                )
              ],
            ),
          ],
        ),
      ),
      Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Colors.white30,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 8,
            ),
            Text(
              "Saturday",
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "5 °F ",
                  style: TextStyle(color: Colors.white, fontSize: 38),
                ),
                Icon(
                  Icons.wb_sunny,
                  color: Colors.white,
                  size: 40,
                )
              ],
            ),
          ],
        ),
      ),
      Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Colors.white30,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 8,
            ),
            Text(
              "Sunday",
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "22 °F ",
                  style: TextStyle(color: Colors.white, fontSize: 38),
                ),
                Icon(
                  Icons.wb_sunny,
                  color: Colors.white,
                  size: 40,
                )
              ],
            ),
          ],
        ),
      ),
      Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Colors.white30,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 8,
            ),
            Text(
              "Monday",
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "18 °F ",
                  style: TextStyle(color: Colors.white, fontSize: 38),
                ),
                Icon(
                  Icons.wb_sunny,
                  color: Colors.white,
                  size: 40,
                )
              ],
            ),
          ],
        ),
      ),
      Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Colors.white30,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 8,
            ),
            Text(
              "Tuesday",
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "12 °F ",
                  style: TextStyle(color: Colors.white, fontSize: 38),
                ),
                Icon(
                  Icons.wb_sunny,
                  color: Colors.white,
                  size: 40,
                )
              ],
            ),
          ],
        ),
      ),
      Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Colors.white30,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 8,
            ),
            Text(
              "Wednesday",
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "19 °F ",
                  style: TextStyle(color: Colors.white, fontSize: 38),
                ),
                Icon(
                  Icons.wb_sunny,
                  color: Colors.white,
                  size: 40,
                )
              ],
            ),
          ],
        ),
      ),
      Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Colors.white30,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 8,
            ),
            Text(
              "Thursday",
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "26 °F ",
                  style: TextStyle(color: Colors.white, fontSize: 38),
                ),
                Icon(
                  Icons.wb_sunny,
                  color: Colors.white,
                  size: 40,
                )
              ],
            ),
          ],
        ),
      ),
    ],
  );
}