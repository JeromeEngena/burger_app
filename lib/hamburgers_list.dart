// ignore_for_file: sized_box_for_whitespace, duplicate_ignore

import 'package:burger_app/burger_page.dart';
import 'package:flutter/material.dart';

class HamburgersList extends StatefulWidget {
  // const HamburgersList({super.key});
  final int row;
  const HamburgersList({super.key, required this.row});

  @override
  State<HamburgersList> createState() => _HamburgersListState();
}

class _HamburgersListState extends State<HamburgersList> {
  @override
  Widget build(BuildContext context) {
    int items = 10;

    Widget baconImage = Container(
      height: 110,
      child: Image.asset("images/bacon_burger.jpg"),
    );
    Widget chickenImage = Container(
      height: 110,
      child: Image.asset("images/chicken_burger.jpg"),
    );
    return SliverToBoxAdapter(
      // ignore: sized_box_for_whitespace
      child: Container(
        height: widget.row == 2 ? 330 : 240,
        margin: const EdgeInsets.only(top: 10),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items,
            itemBuilder: (context, index) {
              bool reverse = widget.row == 2 ? index.isEven : index.isOdd;
              return Stack(
                // ignore: sized_box_for_whitespace
                children: [
                  Container(
                    height: 240,
                    width: 200,
                    margin: EdgeInsets.only(
                        left: 20, right: index == items ? 20 : 0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(BurgerPage.tag);
                      },
                      child: Card(
                        color: Theme.of(context).primaryColor,
                        elevation: 3,
                        margin: const EdgeInsets.all(10),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(45),
                            bottomRight: Radius.circular(15),
                            topLeft: Radius.circular(45),
                            topRight: Radius.circular(45),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Text(
                                reverse ? "Chicken Burger" : "Bacon Burger",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  const Spacer(),
                                  const Text(
                                    "15,95 \$ CAN",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Spacer(),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Icon(Icons.add),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: reverse ? 70 : 70,
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.of(context).pushNamed(BurgerPage.tag);
                        Navigator.of(context).pushNamed("burger_page");
                      },
                      child: reverse ? chickenImage : baconImage,
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
