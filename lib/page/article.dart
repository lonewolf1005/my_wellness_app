import 'package:flutter/material.dart';

class Article extends StatefulWidget {
  const Article({Key? key}) : super(key: key);

  @override
  State<Article> createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Article')),
      body:Center(
        child:Text('Article Screen', style:TextStyle(fontSize:40)),
      ),

    );

  }
}