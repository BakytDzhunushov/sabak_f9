import 'package:flutter/material.dart';
import 'package:sabak_f9/counter2_page.dart';

class Counter1Page extends StatefulWidget {
  const Counter1Page({super.key});

  @override
  State<Counter1Page> createState() => _Counter1PageState();
}

class _Counter1PageState extends State<Counter1Page> {
  int ozgormoSan = 0;
  void koshuu() {
    ozgormoSan++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Тапшырма 01'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: Colors.black12),
              width: 240,
              height: 45,
              child: Text(
                'сан: $ozgormoSan',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ozgormoSan--;
                    setState(() {});
                  },
                  child: Icon(Icons.remove),
                ),
                SizedBox(width: 40),
                ElevatedButton(
                  onPressed: koshuu,
                  child: Icon(Icons.add),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Counter2Page(
                syrttankelgenSan: ozgormoSan,
              ),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
