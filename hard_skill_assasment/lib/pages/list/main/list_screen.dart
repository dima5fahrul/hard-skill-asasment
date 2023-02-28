import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:hard_skill_assasment/preferences/hex_color.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  bool selected = false;
  final _textColor = HexColor("#3B1F0C");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          padding: const EdgeInsets.only(top: 20, bottom: 19),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset('assets/icons/back_icon.png'),
        ),
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: Text(
            "Hasil Pencarian",
            style: TextStyle(
              color: _textColor,
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        elevation: 0,
      ),
      body: Container(),
    );
  }
}
