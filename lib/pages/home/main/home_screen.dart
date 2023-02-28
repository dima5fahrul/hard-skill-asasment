import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hard_skill_assasment/pages/list/main/list_screen.dart';
import 'package:hard_skill_assasment/preferences/hex_color.dart';
import 'package:hard_skill_assasment/preferences/select_button.dart';
import '../../../models/category_model.dart';
import '../../../models/foodlist_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool selected = false;
  final _textColor = HexColor("#3B1F0C");
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          padding: const EdgeInsets.only(left: 20),
          icon: Image.asset('assets/icons/menu.png'),
          onPressed: () {},
        ),
        title: Text(
          'Met, Pagi!',
          style: TextStyle(
            color: _textColor,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: 20, top: 5),
            icon: Image.asset('assets/icons/account.png'),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 5, right: 20, left: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      padding: const EdgeInsets.only(top: 12, bottom: 12),
                      child: Image.asset(
                        'assets/icons/search.png',
                        width: 20,
                      ),
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        // Action ketika ikon diklik
                        _controller.clear();
                      },
                    ),
                    hintText: 'Cari Makanan?',
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, right: 20, left: 20),
                width: 393,
                child: Image.asset('assets/images/banner.png'),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 22),
                height: 36,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 15),
                      child: SelectableButton(
                        selected: selected,
                        onPressed: () {
                          setState(() {
                            selected = !selected;
                          });
                        },
                        child: Text(categories[index].name!),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            selected
                                ? HexColor('#FA8234')
                                : HexColor('#EFA576'),
                          ),
                          foregroundColor: MaterialStateProperty.all(
                            selected ? Colors.white : HexColor('#3B1F0C'),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: categories.length,
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, right: 20, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 2),
                          child: Text(
                            'Makanan Terpopuler',
                            style: TextStyle(
                              color: _textColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Lihat Semua',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, top: 20),
                    height: 145,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Stack(
                        children: [
                          SizedBox(
                            child: Image.asset('assets/images/banner2.png'),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 23, left: 84),
                            height: 30,
                            child: Text(
                              food[index].name!,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 45, left: 84),
                            height: 30,
                            child: Center(
                              child: Text(
                                food[index].loc!,
                                style: const TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 95, left: 15),
                            height: 27,
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 8),
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: HexColor('#E0762F'),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Text(
                                    food[index].type!,
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 8),
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  height: 27,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: HexColor('#E0762F'),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Text(
                                    food[index].year!,
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  height: 27,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: HexColor('#E0762F'),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Text(
                                    food[index].flavor!,
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 15, top: 17),
                            width: 60,
                            child: Image.asset(food[index].image!),
                          ),
                        ],
                      ),
                      itemCount: food.length,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, right: 20, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 2),
                          child: Text(
                            'Makanan Terbaru',
                            style: TextStyle(
                              color: _textColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Lihat Semua',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: food.length,
                    itemBuilder: (context, index) => Container(
                      margin:
                          const EdgeInsets.only(top: 11, left: 20, right: 20),
                      width: 390,
                      height: 115,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: HexColor('#000000').withOpacity(0.25),
                            blurRadius: 4,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 13),
                            alignment: Alignment.centerLeft,
                            width: 50,
                            child: Image.asset(food[index].image!),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 23, left: 75),
                            transformAlignment: Alignment.centerLeft,
                            child: Text(
                              food[index].name!,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: _textColor,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 50, left: 75),
                            transformAlignment: Alignment.centerLeft,
                            child: Text(
                              food[index].loc!,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: _textColor,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 23, right: 11),
                            alignment: Alignment.topRight,
                            child: Text(
                              food[index].time!,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 70, left: 75),
                            height: 27,
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 8),
                                  width: 70,
                                  height: 27,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: HexColor('#EFA576'),
                                  ),
                                  child: Text(
                                    food[index].type!,
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: _textColor,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 8),
                                  width: 70,
                                  height: 27,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: HexColor('#EFA576'),
                                  ),
                                  child: Text(
                                    food[index].flavor!,
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: _textColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ListScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Lihat Semua',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
