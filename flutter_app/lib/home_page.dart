import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.nameLastName,
    required this.kesibi,
    required this.phone,
    required this.email,
  });

  final String nameLastName;
  final String kesibi;
  final String phone;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: const Text('Tapshyrma 4'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage('assets/logo.jpeg'),
            ),
            Text(
              nameLastName,
              style: const TextStyle(
                  fontSize: 52,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              '$kesibi flutter',
              style: const TextStyle(
                fontSize: 35,
                color: Colors.white,
              ),
            ),
            const Divider(
              indent: 350,
              endIndent: 350,
              height: 0,
              thickness: 3,
              color: Colors.white,
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.zero,
              width: double.infinity,
              height: 50,
              color: Colors.white,
              child: Row(
                children: [
                  const SizedBox(
                    width: 430,
                  ),
                  const Icon(
                    Icons.phone_outlined,
                    size: 30,
                    color: Colors.cyan,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    phone,
                    style: const TextStyle(fontSize: 22, color: Colors.cyan),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.white,
              child: Row(children: [
                const SizedBox(
                  width: 430,
                ),
                const Icon(
                  Icons.email_outlined,
                  size: 30,
                  color: Colors.cyan,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  email,
                  style: const TextStyle(fontSize: 22, color: Colors.cyan),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
