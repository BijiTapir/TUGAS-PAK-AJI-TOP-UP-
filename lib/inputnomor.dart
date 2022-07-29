import 'package:flutter/material.dart';

class InputPhone extends StatefulWidget {
  const InputPhone({Key? key}) : super(key: key);

  @override
  State<InputPhone> createState() => _InputPhoneState();
}

class _InputPhoneState extends State<InputPhone> {
  TextEditingController ctrEmail = new TextEditingController();
  String email = "";

  // Widget btnRegister(String text){
  //   return Container(
  //     width: 150,
  //     child: ElevatedButton(onPressed: (){
  //       if(ctrNama.text == "" || ctrUsername.text == ""){

  //       }else{

  //       }
  //     }, child: Text(text)),
  //   );
  // }

  Widget txtInput(String email, TextEditingController controller){
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: email,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Input Email")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            txtInput("email", ctrEmail),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (() {
              email = ctrEmail.text;
              Navigator.pop(context,email);
            }), child: Text("Konfirmasi"))
          ],
        ),
      ),
    );
  }
}