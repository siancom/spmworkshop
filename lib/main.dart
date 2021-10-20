import 'package:flutter/material.dart';
import 'package:flutter_application_1/states/authen.dart';
import 'package:flutter_application_1/states/buyer_service.dart';
import 'package:flutter_application_1/states/create_account.dart';
import 'package:flutter_application_1/states/rider_service.dart';
import 'package:flutter_application_1/states/seller_service.dart';
import 'package:flutter_application_1/utility/my_constant.dart';

final Map<String, WidgetBuilder> map = {
  '/authen': (BuildContext context) => Authen(),
  '/createAccount': (BuildContext context) => CreateAccount(),
  'buyerService': (BuildContext context) => BuyerService(),
  'sellerService': (BuildContext context) => SellerService(),
  'riderService': (BuildContext context) => RiderService(),
};

String? initlalRoute;
void main() {
  initlalRoute = MyConstant.routeAuthen;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyConstant.appName,
      routes: map,
      initialRoute: initlalRoute,
    );
  }
}
