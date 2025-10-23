import 'package:flutter/material.dart';

class SinglePage extends StatelessWidget {
  const SinglePage({
    super.key,
    required this.image,
    required this.name,
    required this.designation,
    required this.department,
    required this.email,
    required this.phone,
    required this.officeContact,
  });

  final String image;
  final String name;
  final String designation;
  final String department;
  final String email;
  final String phone;
  final String officeContact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Faculty of CSE'),
        backgroundColor: const Color.fromARGB(255, 242, 220, 242),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              children: [
                SizedBox(height: 400, width: 400, child: Image.network(image)),
              ],
            ),
            Column(
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  designation,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  department,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  email,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  phone,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  officeContact,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
