import 'package:flutter/material.dart';

class Studentcard extends StatelessWidget {
  const Studentcard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(

        body: Center(
          child: Card(
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

                  // const SizedBox(height: 10),

                  const Text(
                    "Major: Information and Communication Engineering",
                    textAlign: .center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: .bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    "Year: 4",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: .bold,
                    ),
                  ),

                  const SizedBox(height: 15),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}