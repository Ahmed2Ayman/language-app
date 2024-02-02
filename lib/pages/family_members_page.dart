import 'package:flutter/material.dart';
import 'package:language_app/items/family_item.dart';

import '../models/family_model.dart';

class FamilyMembers extends StatelessWidget {
  FamilyMembers({super.key});
 final List<Family> fam = [
    Family(
        image: 'assets/images/family_members/family_father.png',
        jpName: 'chichi',
        enName: 'Father',
        famSound: 'sounds/family_sounds/father.wav'),
    Family(
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'haha',
        enName: 'mother',
        famSound: 'sounds/family_sounds/mother.wav'),
    Family(
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'sofu',
        enName: 'grand father',
        famSound: 'sounds/family_sounds/grand father.wav'),
    Family(
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'sobo',
        enName: 'grand mother',
        famSound: 'sounds/family_sounds/grand mother.wav'),
    Family(
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'musume',
        enName: 'daughter',
        famSound: 'sounds/family_sounds/daughter.wav'),
    Family(
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'ani',
        enName: 'older brother',
        famSound: 'sounds/family_sounds/older bother.wav'),
    Family(
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'ane',
        enName: 'older sister',
        famSound: 'sounds/family_sounds/older sister.wav'),
    Family(
        image: 'assets/images/family_members/family_son.png',
        jpName: 'musuko',
        enName: 'son',
        famSound: 'sounds/family_sounds/son.wav'),
    Family(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'otouto',
        enName: 'younger brother',
        famSound: 'sounds/family_sounds/younger brohter.wav'),
    Family(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'imoto',
        enName: 'younger sister',
        famSound: 'sounds/family_sounds/younger sister.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff533D35),
        title: const Text(
          'Family Members',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: ListView.builder(
        itemCount: fam.length,
        itemBuilder: (BuildContext context, int index) {
          return FamilyItem(family: fam[index]);
        },
      ),
    );
  }
}
