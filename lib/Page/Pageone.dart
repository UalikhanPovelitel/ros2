import 'package:flutter/material.dart';
import 'package:rossecond/Page/Page2.dart';

class Pageone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('StatefullWidget')),
        body: SimpleWidget(),
      ),
    );
  }
}

class SimpleWidget extends StatefulWidget {
  @override
  _SimpleWidgetState createState() => _SimpleWidgetState();
}

class _SimpleWidgetState extends State<SimpleWidget> {
  int _count = 0;

  void _handleButton() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('$_count'),
          ElevatedButton(
            onPressed: () {
              _handleButton();
            },
            child: Text('Click me'),
          ),
          SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pagetwo()),
              );
            },
            child: Text('NextPage'),
          ),
        ],
      ),
    );
  }
}
