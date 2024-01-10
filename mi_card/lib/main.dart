import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/me.jpeg'),
            ),
            const Text(
              'Irving Dev',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 4.0,
            ),
            const Text(
              'MOBILE DEVELOPER',
              style: TextStyle(
                  fontFamily: 'Sans',
                  fontSize: 18.0,
                  color: Colors.white70,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
              width: 200,
              child: Divider(color: Colors.teal.shade100),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.white,
              margin: const EdgeInsets.symmetric(
                vertical: 12.0,
                horizontal: 32.0,
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '55 5858 6060',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Sans',
                      fontSize: 16.0),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 0.0,
                  horizontal: 8.0,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.white,
              margin: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 32.0,
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'irving.dev.mobi@gmail.com',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Sans',
                      fontSize: 16.0),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 0.0,
                  horizontal: 8.0,
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
