import 'package:flutter/material.dart';
import 'package:rossecond/Page/Page8.dart';

class AboutIsland extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'Амазонка',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Амазонка - это необыкновенное место на Земле, полное богатства биоразнообразия и уникальной природы.',
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pageeight()),
                );
              },
              child: Text('NextPage'),
            ),
          ],
        ),
      ),
    );
  }
}
