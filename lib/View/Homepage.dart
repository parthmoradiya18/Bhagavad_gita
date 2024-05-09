
import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: height / 3,
            width: width,
            color: Colors.orange,
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
                    style: TextStyle(
                        fontSize: 50, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: height / 4,
                ),
                Container(
                  height: height / 1.7,
                  width: width / 2.4,
                  color: Colors.orange,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).pushNamed('BhagavadGita');
                          });
                        },
                        child: Container(
                          height: height / 8,
                          width: width / 2.6,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Container(
                                width: width / 8,

                                child:
                                Image.asset('assets/images/Gada.png'),
                              ),
                              Container(
                                width: width / 3.9,
                                alignment: Alignment.center,
                                child: Text(
                                  'भगवद गीता',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).pushNamed('GitaSarScreen');
                          });
                        },
                        child: Container(
                          height: height / 8,
                          width: width / 2.6,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Container(
                                width: width / 8,

                                child:
                                Image.asset('assets/images/Arrow.jpg'),
                              ),
                              Container(
                                width: width / 3.9,
                                alignment: Alignment.center,
                                child: Text(
                                  'गीता सार',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).pushNamed('GitaMahatmyaScreen');
                          });
                        },
                        child: Container(
                          height: height / 8,
                          width: width / 2.6,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Container(
                                width: width / 8,

                                child:
                                Image.asset('assets/images/Bhala1.png'),
                              ),
                              Container(
                                width: width / 3.9,
                                alignment: Alignment.center,
                                child: Text(
                                  'गीता माहात्म्य',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).pushNamed('GitaArtiScreen');
                          });
                        },
                        child: Container(
                          height: height / 8,
                          width: width / 2.6,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Container(
                                width: width / 8,

                                child:
                                Image.asset('assets/images/Talvar.png'),
                              ),
                              Container(
                                width: width / 3.9,
                                alignment: Alignment.center,
                                child: Text(
                                  'गीता आरती',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
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
        ],
      ),
    );
  }
}
