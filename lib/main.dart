import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './pages/currency_convertor_material_page.dart';
import './pages/currency_convertor_cupertino.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:CC()
    );
  }
}

class MYcupertino extends StatelessWidget{
  const MYcupertino({super.key});
  @override
  Widget build(BuildContext context){
    return CupertinoApp(
      home:CCC()
    );
    
  }
}
