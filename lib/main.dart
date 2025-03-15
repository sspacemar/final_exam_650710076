import 'package:final_exam_650710076/ProfileCard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Card',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: StudentCard(),
    );
  }
}

class StudentCard extends StatelessWidget {
  const StudentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Card'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 205, 222),
      ),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileCard(
                name: 'Nuttanicha Wengwilardpaisarn',
                position: 'Student',
                email: 'wengwilardpaisa_n@silpakorn.edu',
                phone: '082-891-7380',
                imageUrl:
                    'https://pyxis.nymag.com/v1/imgs/83e/027/eae785367e589387b9db0d94a06d8f1b66-23-yohji-yamamoto-hello-kitty.rsquare.w400.jpg')
          ],
        ),
      ),
    );
  }
}
