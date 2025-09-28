import 'package:flutter/material.dart';

class Battongrp extends StatelessWidget {
  const Battongrp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Batton Grp',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){}, child: Text('Submit')),
            ElevatedButton(onPressed: (){}, child: Text('Test'))
          ],
        ),gi
      ),
    );
  }
}
