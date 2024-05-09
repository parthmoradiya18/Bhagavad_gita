import 'dart:math';
import 'package:bhagavad_gita/Geeta_My_Data/Geeta_Data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:share_files_and_screenshot_widgets/share_files_and_screenshot_widgets.dart';
GlobalKey imgKey = GlobalKey();
List<GlobalKey> imgKeyList = [];
class AdhyayScreen extends StatefulWidget {
  const AdhyayScreen({super.key});

  @override
  State<AdhyayScreen> createState() => _AdhyayScreenState();
}

int adhyayIndex = 0;

class _AdhyayScreenState extends State<AdhyayScreen> {
  @override
  void initState() {
    // TODO: implement initState

    imgKeyList =
        List.generate(data[0]['adhyay'][adhyayIndex]['shloks'].length, (index) {
      GlobalKey globalKey = GlobalKey();
      return globalKey;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.orange.shade300,
      appBar: PreferredSize(
          child: AppBar(
            backgroundColor: Colors.white,
            iconTheme: const IconThemeData(color: Colors.black),
            title: const Text(
              'श्रीमद भगवद गीता',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          preferredSize: Size(0, 50)),
      body: Stack(
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
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
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
                Container(
                  width: width,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Container(
                          width: width,
                          child: Column(
                            children: List.generate(
                              data[0]['adhyay'][adhyayIndex]['shloks'].length,
                              (index) => buildContainer(index, context),
                            ),
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

Widget buildContainer(int index, BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.height;
  return Column(
    children: [
      RepaintBoundary(
        key: imgKeyList[index],
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          child: Column(
            children: [
              if (index == 0)
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    data[0]['adhyay'][adhyayIndex]['id'],
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF2E2E2E),
                    ),
                  ),
                ),
              if (index == 0)
                Text(
                  data[0]['adhyay'][adhyayIndex]['name'],
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF2E2E2E),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  data[0]['adhyay'][adhyayIndex]['shloks'][index]['shlok'],
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF2E2E2E),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  data[0]['adhyay'][adhyayIndex]['shloks'][index]['meaning'],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF2E2E2E),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        height: height / 20,
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Clipboard.setData(ClipboardData(
                    text:
                        '${data[0]['adhyay'][adhyayIndex]
                        ['shloks'][index]['shlok']}'
                            ' ${data[0]['adhyay'][adhyayIndex]
                        ['shloks'][index]['meaning']}'));
              },
              child: Text(
                'Copy',
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            InkWell(
              onTap: () {
                ShareFilesAndScreenshotWidgets().shareScreenshot(
                    imgKeyList[index],
                    500,
                    "Bhagavad Gita",
                    "Bhagavad Gita.png",
                    "image/png");
              },
              child: Text(
                'Share',
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}


