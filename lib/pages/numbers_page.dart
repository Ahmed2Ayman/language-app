import 'package:flutter/material.dart';
import 'package:language_app/items/numbers_item.dart';
import 'package:language_app/models/number_model.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});

 final List<Numbers> nums = [
    Numbers(
      image: 'assets/images/numbers/number_one.png',
      jpName: "Tsu",
      enName: 'one',
      numSound: 'sounds/numbers_sounds/number_one_sound.mp3',
    ),
    Numbers(
        image: 'assets/images/numbers/number_two.png',
        jpName: "Ni",
        enName: 'Two',
        numSound: 'sounds/numbers_sounds/number_two_sound.mp3'),
    Numbers(
        image: 'assets/images/numbers/number_three.png',
        jpName: "Mittsu",
        enName: 'Three',
        numSound: 'sounds/numbers_sounds/number_three_sound.mp3'),
    Numbers(
        image: 'assets/images/numbers/number_four.png',
        jpName: "Shi",
        enName: 'Four',
        numSound: 'sounds/numbers_sounds/number_four_sound.mp3'),
    Numbers(
        image: 'assets/images/numbers/number_five.png',
        jpName: "Go",
        enName: 'Five',
        numSound: 'sounds/numbers_sounds/number_five_sound.mp3'),
    Numbers(
        image: 'assets/images/numbers/number_six.png',
        jpName: "Roku",
        enName: 'Six',
        numSound: 'sounds/numbers_sounds/number_six_sound.mp3'),
    Numbers(
        image: 'assets/images/numbers/number_seven.png',
        jpName: "Sebun",
        enName: 'Seven',
        numSound: 'sounds/numbers_sounds/number_seven_sound.mp3'),
    Numbers(
        image: 'assets/images/numbers/number_eight.png',
        jpName: "Hachi",
        enName: 'Eight',
        numSound: 'sounds/numbers_sounds/number_eight_sound.mp3'),
    Numbers(
        image: 'assets/images/numbers/number_nine.png',
        jpName: "Kyū",
        enName: 'Nine',
        numSound: 'sounds/numbers_sounds/number_nine_sound.mp3'),
    Numbers(
        image: 'assets/images/numbers/number_ten.png',
        jpName: "Jū",
        enName: 'Ten',
        numSound: 'sounds/numbers_sounds/number_ten_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff533D35),
        title: const Text(
          'Numbers',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: ListView.builder(
        itemCount: nums.length,
        itemBuilder: (BuildContext context, int index) {
          return NumbersItem(numbers: nums[index]);
        },
      ),
    );
  }
}
