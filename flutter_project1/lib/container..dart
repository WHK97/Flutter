import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Study to Container"),
        ),
        body: CustomContainer(),
      ),
    ),
  );
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        margin: EdgeInsets.fromLTRB(10, 2, 3, 4),
        decoration: BoxDecoration(
          color: Color(0xFF181818),
          border: Border.all(
            color: Colors.red,
            width: 10,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(150),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(6, 6),
            )
          ],
        ),
        child: Center(
          child: Text(
            "Hello Container",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
