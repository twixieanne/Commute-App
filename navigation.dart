import 'package:flutter/material.dart';

class NewLocation extends StatefulWidget {
  const NewLocation({Key? key}) : super(key: key);

  @override
  State<NewLocation> createState() => _NewLocationState();
}

class _NewLocationState extends State<NewLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 224, 165, 55),
      ),
      backgroundColor: Color.fromARGB(255, 235, 213, 172),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Container(
                    height: 5,
                    color: const Color.fromARGB(255, 235, 213, 172),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              SizedBox(
                width: 250,
                child: const Text(
                  'Step 1:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 25),
              SizedBox(
                width: 250,
                child: const Text(
                    'Sumakay ka malapit sa footbridge (Ruta: Montalban-Cubao) at bumaba ka sa Puregold Concepcion'),
              ),
              const SizedBox(height: 25),
              SizedBox(
                width: 250,
                child: const Text('Fare: Student - 15, Regular - P17'),
              ),
              const Divider(
                height: 25,
                thickness: 5,
                color: Color.fromARGB(255, 235, 213, 172),
              ),
              SizedBox(
                width: 250,
                child: const Text(
                  'Step 2:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 25),
              SizedBox(
                width: 250,
                child: const Text(
                    'Sumakay ka sa Mcdonalds Concepcion (Ruta: SSS Village - Stop&Shop) at bumaba sa OLOPSC'),
              ),
              const SizedBox(height: 25),
              SizedBox(
                width: 250,
                child: const Text('Fare: Student - 11, Regular - P13'),
              ),
              const Divider(
                height: 25,
                thickness: 5,
                color: Color.fromARGB(255, 235, 213, 172),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
