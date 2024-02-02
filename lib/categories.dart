import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  String name="Members";
  Color  categoryColor=Colors.orange;
  Function ()?  function;
   Category({required this.name,required this.categoryColor,required this.function});

  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: function!,
      child: Container(
        padding: EdgeInsets.only(left: 15),
        alignment: Alignment.centerLeft,
        height: 150,
        width: double.infinity,
        color: categoryColor,
        child: Text(name,
          style: TextStyle(
              color: Colors.white,
              fontSize: 25
          ),
        ),
      ),
    );
  }
}
