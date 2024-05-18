import 'package:flutter/material.dart';
import 'package:inforuet/utility/tilewidget.dart';

class EmergencyCall extends StatefulWidget {
  const EmergencyCall({super.key});

  @override
  State<EmergencyCall> createState() => _RuetGalleryState();
}

class _RuetGalleryState extends State<EmergencyCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 170, 231, 244),Color.fromARGB(185, 4, 221, 241)],
                ),
            ),
            child: const Center(
                child: 
                Text(
                  "Emergency",
                  style: TextStyle(
                    fontFamily: 'Workbench',
                    fontSize: 25,
                  ),
                ),
            
            ),
            ),
          ),
          
      body: const SingleChildScrollView(
        child: Center(
          child: Column(
            
            children: [
               SizedBox(height: 20,),
               CustomTile(
               img: "asset/fireb.png",
               what: "Fire Brigade",
               desc: "Rajshahi City",
               phone: "01730336655"),
               SizedBox(height: 20,),
               CustomTile(
                img: "asset/ambulance.png",
                 what: "Ambulance",
                 desc: "RUET Health Complex",
                  phone: "01712637265"),
              SizedBox(height: 20,),
               CustomTile(
                img: "asset/med.png",
                 what: "Medical",
                 desc: "Rajshahi Medical College",
                  phone: "+880775651"),
              SizedBox(height: 20,),
               CustomTile(
                img: "asset/police.png",
                 what: "Police",
                 desc: "Matihar Thana",
                  phone: "01320061623"),
               SizedBox(height: 20,),
               CustomTile(
                img: "asset/bank.png",
                 what: "Rupali Bank",
                 desc: "RUET Branch",
                  phone: "01711057641"),    

            ],
          ),
        ),
      ),
    );
  }
}