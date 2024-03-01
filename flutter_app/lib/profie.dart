import 'package:flutter/material.dart';
import 'package:flutter_app/home_page.dart';

class InsertDataPage extends StatelessWidget {
  InsertDataPage({super.key});

  final nameLastNameCtl = TextEditingController();
  final kesibiCtl = TextEditingController();
  final phoneCtl = TextEditingController();
  final emailCtl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InsertDataPage'),
        centerTitle: true,
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: TextFormField(
                  controller: nameLastNameCtl,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Аты-Жөнү',
                      labelStyle: TextStyle(fontSize: 20, color: Colors.red)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: TextFormField(
                  controller: kesibiCtl,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Кесиби',
                      labelStyle:
                          TextStyle(fontSize: 20, color: Colors.yellow)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: TextFormField(
                  controller: phoneCtl,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Телефон номери',
                      labelStyle: TextStyle(fontSize: 20, color: Colors.green)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: TextFormField(
                  controller: emailCtl,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      labelStyle: TextStyle(fontSize: 20, color: Colors.cyan)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (nameLastNameCtl.text.isNotEmpty &&
                        kesibiCtl.text.isNotEmpty &&
                        phoneCtl.text.isNotEmpty &&
                        emailCtl.text.isNotEmpty) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePage(
                                  nameLastName: nameLastNameCtl.text,
                                  kesibi: kesibiCtl.text,
                                  phone: phoneCtl.text,
                                  email: emailCtl.text,
                                )),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Маалыматтарды толуктап жазыңыз !!!',
                          ),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: const Text(
                    'Сактоо',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
