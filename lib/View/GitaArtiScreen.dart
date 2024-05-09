
import 'package:flutter/material.dart';
List Geetaarti =[

  'जय भगवद् गीते,जय जय भगवद् गीते ।',
  'हरि-हिय-कमल-विहारिणि,सुन्दर सुपुनीते ॥',
  'कर्म-सुमर्म-प्रकाशिनि,कामासक्तिहरा ।',
  'तत्त्वज्ञान-विकाशिनि,विद्या ब्रह्म परा ॥',
  'जय भगवद् गीते,जय जय भगवद् गीते....',
  'निश्चल-भक्ति-विधायिनि,निर्मल मलहारी ।',
  'शरण-सहस्य-प्रदायिनि,सब विधि सुखकारी ॥',
  'जय भगवद् गीते,जय जय भगवद् गीते....',
  'राग-द्वेष-विदारिणि,कारिणि मोद सदा ।',
  'भव-भय-हारिणि,तारिणि परमानन्दप्रदा ॥',
  'जय भगवद् गीते,जय जय भगवद् गीते....',
  'आसुर-भाव-विनाशिनि,नाशिनि तम रजनी ।',
  'दैवी सद् गुणदायिनि,हरि-रसिका सजनी ॥',
  'जय भगवद् गीते,जय जय भगवद् गीते....',
  'समता, त्याग सिखावनि,हरि-मुख की बानी ।',
  'सकल शास्त्र की स्वामिनी,श्रुतियों की रानी ॥',
  'जय भगवद् गीते,जय जय भगवद् गीते....',

];

class GitaArtiScreen extends StatefulWidget {
  const GitaArtiScreen({super.key});

  @override
  State<GitaArtiScreen> createState() => _GitaArtiScreenState();
}

class _GitaArtiScreenState extends State<GitaArtiScreen> {
  @override
  Widget build(BuildContext context) {
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
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
                children: [
                  SizedBox(
                    height: 500,
                    width: 450,
                    child: Image.asset('assets/images/background_img.png',fit: BoxFit.cover,),
                  ),
                ],
              ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Column(
                children: [
                  SizedBox(
                    height: 175,
                    child: Image.asset(
                      'assets/images/geeta_name.png',
                    ),
                  ),
                  Container(
                    height: 665,
                    width: 450,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Container(
                            height: 635,
                            width: 430,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Text(
                                    'गीता आरती',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                ...List.generate(
                                  17,
                                      (index) => Text(
                                    Geetaarti[index],
                                    style: const TextStyle(fontSize: 20),
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
          ],
        ),
      ),
    );
  }
}

