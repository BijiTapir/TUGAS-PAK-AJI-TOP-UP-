import 'package:flutter/material.dart';
import 'package:tugas/inputNomor.dart';

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  TextEditingController ctrId = new TextEditingController();
  TextEditingController ctrDiamond = new TextEditingController();
  var email = "belum input";
  String id = "belum input";
  String diamond = "belum input";



  Widget txtInput(String id, TextEditingController controller){
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: id,
      ),
    );
  }

  Widget btnPhone(String text){
    return Container(
      width: 150,
      child: ElevatedButton(onPressed: ()async{
        final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => InputPhone())
        );
        setState(() {
          email = result.toString();
        });
      }, child: Text(text)),
    );
  }

  Widget btnRegister(String text){
    return Container(
      width: 150,
      child: ElevatedButton(onPressed: (){
        setState(() {
          id = ctrId.text;
          diamond = ctrDiamond.text;
        });
      }, child: Text(text)),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Top Up Mahal")),
      body:
      Container(
        margin: EdgeInsets.all(10),
        child:
        Column(
          children: [
            txtInput("id", ctrId),
            SizedBox(height:  10,),
            txtInput("diamond", ctrDiamond),
            SizedBox(
              height: 5,
            ),





            Column(
              children: [
                btnPhone("Konfirmasi"),
                SizedBox(width: 15,),
                btnRegister("Beli")
              ],
            ),
            SizedBox(height: 30,),
            Text("id : $id"),
            SizedBox(height: 10,),
            Text("diamond : $diamond"),
            SizedBox(height: 10,),
            Text("email : $email"),
          ],),

      ),

    );
  }
}