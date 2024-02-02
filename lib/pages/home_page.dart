import 'package:flutter/material.dart';
import 'package:language_app/categories.dart';
import 'package:language_app/pages/family_members_page.dart';
import 'package:language_app/pages/numbers_page.dart';

class MyHomePage extends StatelessWidget {
   const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff533D35),
        title: const Text('Toku',
        style: TextStyle(
            fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Category(
              name: "Numbers",
              categoryColor:  Colors.orange,
              function: (){
                Navigator.push(context, MaterialPageRoute(builder:(BuildContext context)=>NumbersPage()));
              },
            ),
            Category(
              name: "Family Members",
              categoryColor: const Color(0xff7D40A2),
              function: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>FamilyMembers()));
              },
            ),
            Category(
              name: 'Colors',
              categoryColor: const Color(0xff528032),
              function: (){},
            ),
            Category(
              name:"phrases" ,
              categoryColor: const Color(0xff47A5CB),
              function: (){},
            ),

          ],
        ),
      ),
    );
  }
}
