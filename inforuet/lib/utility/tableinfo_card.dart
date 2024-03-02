import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

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
    final size=MediaQuery.of(context).size;
    return  ExpansionTileCard(
      leading: Image.network(image),
      title: Text(name),
      subtitle: Text(designation),
      trailing: Text('Department of $department'),
      elevationCurve: Curves.bounceIn,
      initialElevation: 5.0,
      expandedColor: const Color.fromARGB(240, 168, 223, 237),
      children: <Widget>[
        Container(
          height: size.height/20,
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                children: [
                  Text(phone),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.call),
                    ),
                ],
              ),
              const VerticalDivider(
                width: 1.0,
                thickness: 2.0,
                color: Color.fromARGB(1, 77, 76, 76),
              ),
              Row(
                children: [
                  Text(email),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.email),
                    ),
                ],
              ),
            ],
          ),
        ),
        const Divider(
          height: 1.0,
          thickness: 1.0,
        ),
        Container(
          height: size.height/20,
          width: size.width,
          child: Center(child: Text(officeContact)),
        )
      ],
    );
  }
}
