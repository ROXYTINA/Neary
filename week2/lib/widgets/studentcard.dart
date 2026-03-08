import 'package:flutter/material.dart';

class StudentCard extends StatefulWidget {
  const StudentCard({super.key});

  @override
  _StudentCardState createState() => _StudentCardState();

}

class _StudentCardState extends State<StudentCard> {
  bool isFavorite = false; // Track favorite state

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: const EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            // Profile Image
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://media1.tenor.com/m/GbUEw6aY_mMAAAAC/cat-stare.gif'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Name: Sreng Sopheakanha",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Major: Information and Communication Engineering",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              "Year: 4",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            // Favorite Button
            IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.red : Colors.grey,
                size: 35,
              ),
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite; // Toggle favorite state
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}