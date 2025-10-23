import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:url_launcher/url_launcher.dart';

class TableInfoCard extends StatelessWidget {
  const TableInfoCard({
    super.key,
    required this.image,
    required this.name,
    required this.designation,
    required this.department,
    required this.email,
    required this.phone,
    required this.officeContact,
    required this.singlePage,
  });

  final String image;
  final String name;
  final String designation;
  final String department;
  final String email;
  final String phone;
  final String officeContact;
  final Widget singlePage;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ExpansionTileCard(
      leading: Image.network(image),
      title: Text(name),
      subtitle: Text(designation),
      trailing: Text('Department of $department'),
      elevationCurve: Curves.bounceIn,
      initialElevation: 5.0,
      expandedColor: const Color.fromARGB(240, 168, 223, 237),
      children: <Widget>[
        SizedBox(
          height: size.height / 10,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(phone),
                    IconButton(
                      onPressed: () async {
                        final Uri url = Uri(scheme: 'tel', path: phone);
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          print('can not launch this url');
                        }
                      },
                      icon: const Icon(Icons.call),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(email),
                    IconButton(
                      onPressed: () async {
                        final Uri url = Uri(scheme: 'mailto', path: email);
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          print('can not launch this url');
                        }
                      },
                      icon: const Icon(Icons.email),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Divider(height: 1.0, thickness: 1.0),
        SizedBox(
          height: size.height / 15,
          width: size.width,
          child: Center(child: Text(officeContact)),
        ),
        const Divider(height: 1.0, thickness: 1.0),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => singlePage),
            );
          },
          child: const Text('Details'),
        ),
      ],
    );
  }
}
