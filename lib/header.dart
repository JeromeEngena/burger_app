import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Column(
            children: [
              Container(
                height: size.height,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
