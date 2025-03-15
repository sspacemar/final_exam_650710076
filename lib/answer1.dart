import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('โปรไฟล์ผู้ใช้'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 123, 184, 227),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UserProfile(
                name: 'ชื่อผู้ใช้: Nuttanicha Wengwilardpaisarn',
                email: 'อีเมล: wengwilardpaisa_n@silpakorn.edu',
                imageUrl:
                    'https://www.kasandbox.org/programming-images/avatars/leaf-blue.png',
                setting: 'การตั้งค่า',
                psswd: 'เปลี่ยนรหัสผ่าน',
                privacy: 'ความเป็นส่วนตัว')
          ],
        ),
      ),
    );
  }
}

class UserProfile extends StatelessWidget {
  final String name;
  final String email;
  final String imageUrl;
  final String setting;
  final String psswd;
  final String privacy;

  const UserProfile(
      {required this.name,
      required this.email,
      required this.imageUrl,
      required this.setting,
      required this.psswd,
      required this.privacy});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.all(25),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(imageUrl),
          ),
          SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
          Text(
            email,
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.settings,
                size: 23,
                color: const Color.fromARGB(255, 123, 184, 227),
              ),
              SizedBox(width: 5),
              Text(setting, style: TextStyle(fontSize: 14)),
            ],
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.lock,
                size: 23,
                color: const Color.fromARGB(255, 123, 184, 227),
              ),
              SizedBox(width: 5),
              Text(psswd, style: TextStyle(fontSize: 14)),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.question_mark_rounded,
                size: 23,
                color: const Color.fromARGB(255, 123, 184, 227),
              ),
              SizedBox(width: 5),
              Text(privacy, style: TextStyle(fontSize: 14))
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 35),
              ElevatedButton(
                onPressed: () {},
                child: const Text("แก้ไขโปรไฟล์"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                child: const Text("ออกจากระบบ"),
              )
            ],
          )
        ],
      ),
    );
  }
}
