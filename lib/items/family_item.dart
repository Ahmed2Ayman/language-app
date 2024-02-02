import 'package:flutter/material.dart';
import 'package:language_app/models/family_model.dart';
import '../models/sound_model.dart';

class FamilyItem extends StatelessWidget {
  const FamilyItem({super.key,required this.family});
 final Family family;
  @override
  Widget build(BuildContext context) {
    return  Container(

      color: const Color(0xff548634),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.centerLeft,
              color: const Color(0xffFFF4DC) ,
              child: Image.asset(family.image,height: 100,)),
          const SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(family.jpName,
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),
              ),
              Text(family.enName,
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),
              ),
            ],
          ),
          const Spacer(flex: 4,),
          IconButton(onPressed: (){
            Player.play(family.famSound);
          }, icon: const Icon(Icons.play_arrow,color: Colors.white,)),
        ],
      ),
    );
  }
}
