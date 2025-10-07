import 'package:flutter/material.dart';

class FluterInput extends StatelessWidget {
  const FluterInput({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneControl = TextEditingController();
    TextEditingController passwordControl = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Input'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Facebook_New_Logo_%282015%29.svg/2560px-Facebook_New_Logo_%282015%29.svg.png'),
            SizedBox(height: 10,),
            Image.asset('assets/yt.png'),
            SizedBox(height: 10,),
            TextField(
              controller: phoneControl,
              keyboardType: TextInputType.phone,
              maxLength: 11,
              cursorColor: Colors.orange,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                suffixIcon: Icon(Icons.check),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                filled: true,
                contentPadding: EdgeInsets.all(20),
                // fillColor: Colors.grey,
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
            ),
            SizedBox(height: 10,),
            TextField(
              controller: passwordControl,
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  hintText: 'Enter Password',
                  hintStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.grey
                  ),
                  helperText: 'Password',
                  helperStyle: TextStyle(
                      color: Colors.blue
                  ),
                  labelText: 'Enter passwors',
                  labelStyle: TextStyle(
                      color: Colors.orange
                  )
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  print(
                      phoneControl.text
                  );
                  print(
                      passwordControl.text
                  );
                  if(passwordControl.text.length<6){
                    print('Password Must be 8');
                  }
                  phoneControl.clear();
                  passwordControl.clear();
                }, child: Text("Submit")))
          ],
        ),
      ),
    );
  }
}
