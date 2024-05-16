import 'package:commute/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Jeep extends StatefulWidget {
  const Jeep({super.key});

  @override
  State<Jeep> createState() => _JeepState();
}

class _JeepState extends State<Jeep> {
  TextEditingController locationController = TextEditingController();
  TextEditingController startController = TextEditingController();
  String start = '18 Martelyete, San Roque, Marikina City';
  String location = 'OLOPSC';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 224, 165, 55),
      ),
      backgroundColor: Color.fromARGB(255, 235, 213, 172),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 240,
              child: TextField(
                controller: locationController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Where do you want to go?'),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 250,
              child: TextField(
                controller: startController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Where are you from?'),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
                child: Text("Let's Go!"),
                onPressed: () {
                  if (locationController.text == location &&
                      startController.text == start) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewLocation(),
                        ));
                  }
                  ;
                }),
          ],
        ),
      ),
    );
  }
}
