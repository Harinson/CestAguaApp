import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ImageWidget extends StatelessWidget {
  final String letter;
  const ImageWidget({
    super.key,
    required this.letter,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey),
        color: Colors.grey,
      ),
      child: Center(
        child: Text(letter.substring(0, 1).toUpperCase(),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
            )),
      ),
    );
  }
}
