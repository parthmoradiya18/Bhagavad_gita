import 'dart:math';

import 'package:bhagavad_gita/Geeta_My_Data/Geeta_Data.dart';
import 'package:flutter/material.dart';



class GitasarScreen extends StatefulWidget {
  const GitasarScreen({super.key});

  @override
  State<GitasarScreen> createState() => _GitasarScreenState();
}

class _GitasarScreenState extends State<GitasarScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.orange.shade300,
      appBar:
      PreferredSize(child: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'श्रीमद भगवद गीता',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ), preferredSize: Size(0, 50)),
      body: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: height / 3,
              width: width,
              color: Colors.orangeAccent,
              child: Stack(
                children: [
                  Positioned(
                    left: 150,
                    child: Transform.rotate(
                      child: Container(
                        height: height / 4,
                        child: Image.asset('assets/images/Morpankh2.png'),
                      ),
                      angle: pi / 4,
                    ),
                  ),
                  Positioned(
                    top: 130,
                    left: 110,
                    child: Text(
                      '॥ गीता ॥',
                      style:
                      TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: height / 4,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      width: width,
                      color: Colors.orange,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                            child: Container(
                              width: width,
                              color: Colors.orangeAccent,
                              child: Column(
                                children: List.generate(
                                  data[1]['adhyay'].length,
                                      (index) => buildContainer(index, context),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildContainer(int index, BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  return Padding(
    padding:  EdgeInsets.symmetric(vertical: 5),
    child: Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,

      child: Column(
        children: [
          Text(
            data[1]['adhyay'][index]['id'],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: height / 55,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              data[1]['adhyay'][index]['id'],
              style: TextStyle(
                fontSize: height / 40,
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
            ),
          ),
          Text(
            data[1]['adhyay'][index]['meaning'],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
  );
}