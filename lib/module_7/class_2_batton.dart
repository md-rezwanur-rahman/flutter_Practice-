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
            SizedBox(height: 50,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                  )
                ),
                onPressed: (){}, child: Text('Submit')),
            SizedBox(height: 30,),
            SizedBox(
              height: 50,
              width: 300,
              // width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellowAccent,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                  onPressed: (){}, child: Text('Test')),
            ),
            SizedBox(height: 20,),
            SizedBox
              (height: 50,
                width: 300,
                child: OutlinedButton(
                    // style: OutlinedButton.styleFrom(
                    //   backgroundColor: Colors.black,
                    //   foregroundColor: Colors.white
                    // ),
                    onPressed: (){}, child: Text('Outline'))),
            SizedBox(height: 20,),
            TextButton(onPressed: (){
              print('Read More');
            }, child: Text('Read more')),
            SizedBox(height: 50,),
            Icon(Icons.accessibility_sharp,size: 50,color: Colors.purple,),
            SizedBox(height: 20,),
            IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.red,size: 50,)),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                print('Sinle Press');
              },
              onDoubleTap: (){
                print('Double Click');
              },
                onLongPress: (){
                  print('Long Presh');
                },
                child: Text('This is test text')),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                print('Sinle Press');
              },
              onDoubleTap: (){
                print('Double Click');
              },
              onLongPress: (){
                print('Long Presh');
              },
              child: Text('Test-2',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50
              ),),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellowAccent,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50)
        ),
        
        onPressed: (){
          print('Click on add');
        },
      child: Icon(Icons.add,),),
    );
  }
}
