import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Weather Forecast',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: weatherForeCast(),
    ));
  }
}

Widget weatherForeCast() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        _textField(),
        SizedBox(height: 25.0),
        _cityDetail(),
        SizedBox(height: 25.0),
        _temperatureDetail(),
        SizedBox(height: 25.0),
        _extraWeatherDetail(),
        SizedBox(height: 50.0),
        _textBottom(),
        SizedBox(height: 25.0),
        _bottomDetail()
      ],
    ),
  );
}

Padding _textField() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
        onChanged: (String str) {
          print(str);
        },
        style: TextStyle(color: Colors.white, fontSize: 15.0),
        decoration: InputDecoration(
            hintText: 'Enter City Name',
            hintStyle: TextStyle(
              color: Colors.white,
            ),
            border: InputBorder.none,
            icon: Icon(
              Icons.search,
              size: 30.0,
              color: Colors.white,
            ))),
  );
}

Center _cityDetail() {
  return Center(
    child: Column(
      children: [
        Text(
          'Karaganda Oblast, KZ',
          style: TextStyle(
              fontSize: 30.0, color: Colors.white, fontWeight: FontWeight.w300),
        ),
        SizedBox(height: 12.0),
        Text(
          'Saturday, April 4, 2021',
          style: TextStyle(
              fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.w300),
        )
      ],
    ),
  );
}

Row _temperatureDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        children: [
          Icon(
            Icons.wb_sunny,
            size: 80.0,
            color: Colors.white,
          ),
        ],
      ),
      SizedBox(
        width: 15.0,
      ),
      Column(
        children: <Widget>[
          Text(
            '14 °F',
            style: TextStyle(
                color: Colors.white,
                fontSize: 60.0,
                fontWeight: FontWeight.w100),
          ),
          Text('LIGHT SNOW',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w300))
        ],
      )
    ],
  );
}

Row _extraWeatherDetail() {
  return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
    Column(
      children: [
        Icon(
          Icons.ac_unit,
          size: 35.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          '5',
          style: TextStyle(
              color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.w300),
        ),
        Text(
          'km/hr',
          style: TextStyle(
              color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.w400),
        )
      ],
    ),
    Column(
      children: [
        Icon(
          Icons.ac_unit,
          size: 35.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          '3',
          style: TextStyle(
              color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.w300),
        ),
        Text(
          '%',
          style: TextStyle(
              color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.w400),
        )
      ],
    ),
    Column(
      children: [
        Icon(
          Icons.opacity,
          size: 35.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          '20',
          style: TextStyle(
              color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.w300),
        ),
        Text(
          '%',
          style: TextStyle(
              color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.w400),
        )
      ],
    )
  ]);
}

Center _textBottom() {
  return Center(
    child: Text(
      '7-DAY WEATHER FORECAST',
      style: TextStyle(
          color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.w300),
    ),
  );
}

Widget _bottomDetail() {
  return Container(
    height: 150.0,
    alignment: Alignment.center,
    child: ListView(
      scrollDirection: Axis.horizontal,
      itemExtent: 220.0,
      children: [
        Container(
          color: Colors.white54,
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Friday',
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '6 °F',
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                    size: 45,
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          color: Colors.white54,
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Saturday',
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '7 °F',
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                    size: 45,
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white54,
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Sunday',
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '4 °F',
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                    size: 45,
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white54,
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Monday',
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '10 °F',
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                    size: 45,
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white54,
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Tuesday',
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '12 °F',
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                    size: 45,
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white54,
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Wednesday',
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '15 °F',
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                    size: 45,
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white54,
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Thursday',
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '5 °F',
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                    size: 45,
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
