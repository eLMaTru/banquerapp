import 'package:flutter/material.dart';

class CircleNumbers extends StatelessWidget {
  final String numbers;
  final Color color;

  CircleNumbers({this.numbers, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: convertCircleNumbers(this.numbers),
        ),
      ),
    );
  }

  List<Container> convertCircleNumbers(String numbers) {
    List<String> list = numbers.split(",");
    List<Container> avatars = [];
    for (var item in list) {
      avatars.add(
        Container(
          child: CircleAvatar(
            backgroundColor: color,
            radius: 15.5,
            child: Center(
              child: Text(
                item,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          padding: EdgeInsets.only(top: 5, right: 3),
        ),
      );
    }

    return avatars;
  }
}
