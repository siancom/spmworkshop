import 'package:flutter/material.dart';
import 'package:flutter_application_1/utility/my_constant.dart';
import 'package:flutter_application_1/widgets/show_title.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  Row buildName(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
            decoration: InputDecoration(
              labelStyle: MyConstant().h3Style(),
              labelText: 'Name:',
              prefixIcon: Icon(
                Icons.face_outlined,
                color: MyConstant.dark,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyConstant.dark),
                borderRadius: BorderRadius.circular(25),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyConstant.ligth),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('CreateAccount'),
        backgroundColor: MyConstant.primary,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          buildTitle('ข้อมูลทั่วไป'),
          buildName(size),
          buildTitle('ชนิดของUser:'),
        ],
      ),
    );
  }

  Container buildTitle(String title) {
    return Container(margin: EdgeInsets.symmetric(vertical: 16),
      child: ShowTitle(title: title, textStyle: MyConstant().h2Style()));
  }
}
