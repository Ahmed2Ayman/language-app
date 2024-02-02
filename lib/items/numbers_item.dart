import 'package:flutter/material.dart';
import 'package:language_app/models/number_model.dart';

import '../models/sound_model.dart';

class NumbersItem extends StatelessWidget {
   const NumbersItem({super.key,required this.numbers});
final Numbers numbers;
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.orange,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              color: const Color(0xffFFF4DC) ,
              child: Image.asset(numbers.image,height: 100,)),
          const SizedBox(width: 15,),
          Column(
            children: [
              Text(numbers.jpName,
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),
              ),
              Text(numbers.enName,
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),
              ),
            ],
          ),
          const Spacer(flex: 4,),
          IconButton(onPressed: (){
           Player.play(numbers.numSound);
          }, icon: const Icon(Icons.play_arrow,color: Colors.white,)),
        ],
      ),
    );
  }
}
