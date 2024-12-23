import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      title: "Resume",
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Resume",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // รูปภาพแสดงเป็นวงกลม
              Center(
                child: CircleAvatar(
                  radius: 75,
                  backgroundImage: AssetImage("assets/images/shadow.jpg"),
                ),
              ),
              const SizedBox(height: 20),

              // ชื่อและข้อมูลทั่วไป
              const Center(
                child: Text(
                  "Yongyut Awasri Wave",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 30),

              // Divider เพื่อแยกส่วนข้อมูล
              const Divider(thickness: 1, color: Colors.grey),
              const SizedBox(height: 20),

              // Hobby, Food, Birthplace พร้อมไอคอน
              const Text(
                "Personal Information:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Icon(Icons.sports_esports, color: Colors.blue),
                  SizedBox(width: 10),
                  Text("Hobby: Play games", style: TextStyle(fontSize: 16)),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Icon(Icons.fastfood, color: Colors.green),
                  SizedBox(width: 10),
                  Text("Food: Ramen", style: TextStyle(fontSize: 16)),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Icon(Icons.location_on, color: Colors.red),
                  SizedBox(width: 10),
                  Text("Birthplace: Nakhon Sawan", style: TextStyle(fontSize: 16)),
                ],
              ),
              const SizedBox(height: 30),

              // การศึกษา
              const Text(
                "Education:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              // การจัดข้อมูลการศึกษาและปี
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Elementary: Uthissuksa School",
                      style: TextStyle(fontSize: 16)),
                  Text("Year: 2016", style: TextStyle(fontSize: 16)),
                ],
              ),
              const Divider(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Primary: Khongphai School",
                      style: TextStyle(fontSize: 16)),
                  Text("Year: 2019", style: TextStyle(fontSize: 16)),
                ],
              ),
              const Divider(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("High School: Khongphai School",
                      style: TextStyle(fontSize: 16)),
                  Text("Year: 2022", style: TextStyle(fontSize: 16)),
                ],
              ),
              const Divider(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Undergrad: Naresuan University",
                      style: TextStyle(fontSize: 16)),
                  Text("Year: 2026", style: TextStyle(fontSize: 16)),
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
