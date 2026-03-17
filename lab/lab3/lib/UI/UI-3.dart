import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xFF1E1E2E),

      appBar: AppBar(
        title: const Text("Dashboard",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        ),
        backgroundColor: Colors.indigo,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            const Text(
              "Hello, User!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 4),

            const Text(
              "Here's your overview",
              style: TextStyle(
                  color: Colors.grey,
                fontSize: 17,
              ),
            ),

            const SizedBox(height: 20),

            Row(
              children: [

                Expanded(
                  child: DataCard(
                    color: const Color(0xFFDCE6F9),
                    number: "12",
                    label: "COURSES",
                    subtitle: "3 in progress",
                    icon: Icons.bar_chart,
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: DataCard(
                    color: const Color(0xFFF3D7E2),
                    number: "3.8",
                    label: "GPA",
                    subtitle: "Top 15%",
                    icon: Icons.emoji_events,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            const ListTile(
              leading: Icon(Icons.access_time, color: Colors.white),
              title: Text("Recent Activity",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              subtitle: Text("2 new updates",
              style: TextStyle(color: Colors.grey),
              ),
              trailing: Icon(Icons.arrow_forward_ios, size: 16, fontWeight: FontWeight.bold),
            ),

            const ListTile(
              leading: Icon(Icons.assignment, color: Colors.white,),
              title: Text("Assignments",
              style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              subtitle: Text("3 pending",
              style:
              TextStyle(color: Colors.grey)
              ),
              trailing: Icon(Icons.arrow_forward_ios, size: 16, fontWeight: .bold,),
            ),

            const ListTile(
              leading: Icon(Icons.settings, color: Colors.white,),
              title: Text("Settings",
              style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
              ),
              subtitle: Text("Profile & prefs",
              style:
                TextStyle(color: Colors.grey),
              ),
              trailing: Icon(Icons.arrow_forward_ios, size: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      )
    );
  }
}

class DataCard extends StatelessWidget {
  final Color color;
  final String number;
  final String label;
  final String subtitle;
  final IconData icon;

  const DataCard({
    super.key,
    required this.color,
    required this.number,
    required this.label,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [

          // Card content
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(height: 30),

                Text(
                  number,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  label,
                  style: const TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  subtitle,
                  style: const TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),

          // Icon overlay INSIDE card
          Positioned(
            right: 12,
            top: 12,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: Icon(icon, color: Colors.indigo),
            ),
          ),
        ],
      ),
    );
  }
}