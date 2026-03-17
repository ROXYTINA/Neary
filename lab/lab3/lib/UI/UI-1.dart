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
      home: ProfileCard(),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kanha Card"),
        backgroundColor: Colors.pinkAccent[100],
      ),

      body: Center(
        child: Container(
          width: 320,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.pinkAccent[100],
            borderRadius: BorderRadius.circular(20),
          ),


          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              // Profile Avatar
              const CircleAvatar(
                radius: 40,
                backgroundColor: Colors.pinkAccent,
                child: Text(
                  "K",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),

              const SizedBox(height: 15),

              // Name
              const Text(
                "Sreng Sopheakanha",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const Text(
                "Software Engineering",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 20),

              // Stats container
              Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.pink),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),

                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    StatItem("8", "COURSES"),
                    StatItem("3.5", "GPA"),
                    StatItem("64", "CREDITS"),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Buttons Row
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Follow",
                          style:
                          TextStyle(color: Colors.pinkAccent)
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),
                  Expanded(
                    child: OutlinedButton(
                      style:
                      OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.white),
                      ),
                      onPressed: () {},
                      child: const Text("Message",
                        style:
                        TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}

// Reusable Stat Widget
class StatItem extends StatelessWidget {
  final String value;
  final String label;

  const StatItem(this.value, this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}