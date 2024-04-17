import 'package:flutter/material.dart';

void main() {
  runApp(const CreeperApp());
}

class CreeperApp extends StatelessWidget {
  const CreeperApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Creeper character of Minecraft',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Creeper character of Minecraft'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container to hold the Creeper icon and text
              Container(
                width: 300,
                height: 300,
                color: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    const CreeperIcon(),

                    const SizedBox(height: 20),

                    const Text(
                      'Кри́пер (англ. Creeper) — зелёное четырёхногое существо, один из враждебных мобов в компьютерной игре Minecraft.',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CreeperIcon extends StatelessWidget {
  const CreeperIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.green,
      child: Stack(
        children: [
          // Left Eye Creeper
          Positioned(
            left: 20,
            top: 20,
            child: Container(
              width: 20,
              height: 20,
              color: Colors.black,
            ),
          ),
          // Right Left Eye
          Positioned(
            left: 60,
            top: 20,
            child: Container(
              width: 20,
              height: 20,
              color: Colors.black,
            ),
          ),
          // Left
          Positioned(
            left: 25,
            top: 60,
            child: Container(
              width: 10,
              height: 20,
              color: Colors.black,
            ),
          ),
          // Right Eye Creeper
          Positioned(
            left: 65,
            top: 60,
            child: Container(
              width: 10,
              height: 20,
              color: Colors.black,
            ),
          ),
          // Nose
          Positioned(
            left: 40,
            top: 40,
            child: Container(
              width: 20,
              height: 20,
              color: Colors.black,
            ),
          ),
          // Mouth
          Positioned(
            left: 25,
            top: 50,
            child: Container(
              width: 50,
              height: 20,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );

  }
}