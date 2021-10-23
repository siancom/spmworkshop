import 'package:flutter/material.dart';
import 'package:flutter_application_1/utility/my_constant.dart';
import 'package:flutter_application_1/widgets/show_title.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  String? typeUser; //กำหนดตัวแปร

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

Row buildPhone(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
            decoration: InputDecoration(
              labelStyle: MyConstant().h3Style(),
              labelText: 'Phone:',
              prefixIcon: Icon(
                Icons.phone,
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
  Row buildUser(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
            decoration: InputDecoration(
              labelStyle: MyConstant().h3Style(),
              labelText: 'User:',
              prefixIcon: Icon(
                Icons.perm_identity,
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
  Row buildAddress(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(maxLines: 4,
            decoration: InputDecoration(
             hintText: 'Address:',
             hintStyle: MyConstant().h3Style(),
              prefixIcon: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                child: Icon(
                  Icons.home,
                  color: MyConstant.dark,
                ),
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
Row buildPassword(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
            decoration: InputDecoration(
              labelStyle: MyConstant().h3Style(),
              labelText: 'Password:',
              prefixIcon: Icon(
                Icons.lock_clock_outlined,
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
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            buildTitle('ข้อมูลทั่วไป'),
            buildName(size),
            buildTitle('ชนิดของUser:'),
            buildRadioSeller(size),
            buildRadioBuyer(size),
            buildRadioRider(size),
            buildTitle('ข้อมูลพื้นฐาน'),
            buildPhone(size),
            buildUser(size),buildPassword(size),
          ],
        ),
      ),
    );
  }

  Row buildRadioBuyer(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size * 0.6,
          child: RadioListTile(
              value: 'buyer',
              groupValue: typeUser,
              onChanged: (value) {
                setState(() {
                  typeUser = value as String?;
                });
              },
              title: ShowTitle(
                title: 'ผู้ซื้อ(Buyer)',
                textStyle: MyConstant().h3Style(),
              )),
        ),
      ],
    );
  }

  Row buildRadioSeller(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size * 0.6,
          child: RadioListTile(
              value: 'seller',
              groupValue: typeUser,
              onChanged: (value) {
                setState(() {
                  typeUser = value as String?;
                });
              },
              title: ShowTitle(
                title: 'ผู้ขาย(Seller)',
                textStyle: MyConstant().h3Style(),
              )),
        ),
      ],
    );
  }

  Widget buildRadioRider(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size * 0.6,
          child: RadioListTile(
              value: 'rider',
              groupValue: typeUser,
              onChanged: (value) {
                setState(() {
                  typeUser = value as String?;
                });
              },
              title: ShowTitle(
                title: 'ผู้ส่ง(Rider)',
                textStyle: MyConstant().h3Style(),
              )),
        ),
      ],
    );
  }

  Container buildTitle(String title) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 16),
        child: ShowTitle(title: title, textStyle: MyConstant().h2Style()));
  }
}
