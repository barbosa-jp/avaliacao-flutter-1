import 'package:flutter/material.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 350,
            child: Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: TextField(
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                maxLines: 20,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 85, 82, 125),
                  hintText: 'Como foi seu dia?',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(100, 255, 255, 255)
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
        ]
      )
    );
  }
}