import 'package:flutter/material.dart';
import 'package:rossecond/Page/Page3.dart';

class Pagetwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container widget'),
        ),
        body: SimpleWidget(),
      ),
    );
  }
}

class SimpleWidget extends StatelessWidget {
  const SimpleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(
              'Amazonka',
              style: TextStyle(fontSize: 40, color: Colors.white70),
            ),
            height: 200,
            width: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/amazonka.jpeg'),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  blurRadius: 5.0,
                  spreadRadius: 5.0,
                  offset: Offset(-5, 5),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pagethree()),
              );
            },
            child: Text('NextPage'),
          ),
        ],
      ),
    );
  }
}
