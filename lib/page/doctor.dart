import 'package:flutter/material.dart';

class Doctor extends StatefulWidget {
  const Doctor({Key? key}) : super(key: key);

  @override
  State<Doctor> createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Doctor')),
      body:Center(
        child:Text('Doctor Screen', style:TextStyle(fontSize:40)),
      ),

    );

  }
}