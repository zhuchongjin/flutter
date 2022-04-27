import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: '列表示例',
    home: new ListViewDemo(),
  ));
}

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListViewDemo'),
      ),
      // body: Center(
      //   child: Text('列表示例'),
      // ),
      // body: MyList(),

      // 横向
      // body: MyListHorizontal(),

      body: new ListView(
        children: [
          new ListTile(
            leading: new Icon(Icons.access_time),
            title: new Text('access_time'),
          ),
          new ListTile(
            leading: new Icon(Icons.access_alarm_sharp),
            title: Text('access_alarm_sharp'),
          ),
          // new Image.network(
          // 'http://m.imeitou.com/uploads/allimg/2018052508/rdfqlyrluii.jpg'),
          Container(
            color: Colors.lightBlue,
            width: 300.0,
            height: 200.0,
            child: Image.network(
                'http://m.imeitou.com/uploads/allimg/2018052508/rdfqlyrluii.jpg'),
          ),
        ],
      ),
    );
  }
}

class MyList extends StatelessWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        new ListTile(
          leading: new Icon(Icons.access_time),
          title: new Text('access_time'),
        ),
        new ListTile(
          leading: new Icon(Icons.access_alarm_sharp),
          title: Text('access_alarm_sharp'),
        ),
        // new Image.network(
        // 'http://m.imeitou.com/uploads/allimg/2018052508/rdfqlyrluii.jpg'),
        Container(
          color: Colors.lightBlue,
          width: 300.0,
          height: 200.0,
          child: Image.network(
              'http://m.imeitou.com/uploads/allimg/2018052508/rdfqlyrluii.jpg'),
        ),
      ],
    );
  }
}

// 横向
class MyListHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 180.0,
          color: Colors.black,
        ),
        new Container(
          width: 180.0,
          color: Colors.amber,
        ),
        new Container(
          width: 180.0,
          color: Colors.deepOrange,
        ),
        new Container(
          width: 180.0,
          color: Colors.deepPurpleAccent,
        ),
      ],
    );
  }
}
