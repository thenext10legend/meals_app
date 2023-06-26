// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pick your category"),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          Text(
            "1",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "2",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "3",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "4",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "5",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "6",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
