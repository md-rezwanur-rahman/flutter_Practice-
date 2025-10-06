import 'package:flutter/material.dart';

class FluterInput extends StatelessWidget {
  const FluterInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Input'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:Column(
        children: [
          SizedBox(height: 10,),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.phone),
              suffixIcon: Icon(Icons.check),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              hintText: 'Enter Phone Number',
              hintStyle: TextStyle(
                fontSize: 18,
                color: Colors.grey
              ),
              helperText: 'Enter Phone Number',
              helperStyle: TextStyle(
                color: Colors.blue
              ),
              labelText: 'Phone Number',
              labelStyle: TextStyle(
                color: Colors.orange
              )
            ),
          )
        ],
      ),
    );
  }
}
