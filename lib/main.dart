import 'package:final_exam_650710076/answer1.dart';
import 'package:final_exam_650710076/answer2.dart';
import 'package:flutter/material.dart';

//answer1

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileCard(),
    );
  }
}

//answer2

// void main() {
//   runApp(const ShippingForm());
// }

// class CalShipping extends StatelessWidget {
//   const CalShipping({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ShippingForm(),
//     );
//   }
// }
