import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var currentImg1 = 0;
  var currentImg2 = 0;
  // ignore: prefer_typing_uninitialized_variables
  var newImg;

  void player1() {
    do {
      newImg = randomizer.nextInt(3) + 1;
    } while (newImg == currentImg1);
    setState(() {
      currentImg1 = newImg;
    });
  }

  void player2() {
    setState(() {
      do {
        newImg = randomizer.nextInt(3) + 1;
      } while (newImg == currentImg2);
      currentImg2 = newImg;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
            child: Text(
          'Stone Paper Sicssor',
          style: TextStyle(color: Colors.white),
        )),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 223, 105),
      body: Row(
        children: [
          Expanded(
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset(
                      'lib/images/img$currentImg1.png',
                      width: 60,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: player1,
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.blue),
                      fixedSize: WidgetStatePropertyAll(Size(120, 40)),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Click',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const VerticalDivider(
            indent: 2,
            color: Color.fromARGB(
                255, 100, 100, 100), // Customize the color of the vertical line
            thickness: 1.0, // Set the thickness of the line
            width: 2.0, // Set the width of the vertical divider
          ),
          Expanded(
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.asset(
                        'lib/images/img$currentImg2.png',
                        width: 60,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: player2,
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.blue),
                        fixedSize: WidgetStatePropertyAll(Size(120, 40)),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Click',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
