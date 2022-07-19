import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

enum BottomIcons {Home, Favorite, Search, Account}

class BottomBar extends StatefulWidget {


  BottomIcons home = BottomIcons.Home;

  Function pressed;
  bool bottomIcons;
  String text;
  IconData icons;
  BottomBar({Key? key,
    required this.pressed,
    required this.bottomIcons,
    required this.text,
    required this.icons}) : super(key: key);


  int _selectedIndex = 0;

  void _onItemTapped(index) async {
    setState(() {
      pressed = index;
    });
  }

  @override
  _BottomBarState createState() => _BottomBarState();

  void setState(Null Function() param0) {

  }
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {


    return GestureDetector(

        onTap: () => widget.pressed,


        child: widget.bottomIcons == true
            ? Container(
              decoration: BoxDecoration(
                color: Colors.indigo.shade100.withOpacity(0.6),
                borderRadius: BorderRadius.circular(30),
              ),
              padding:
                  EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
              child: Row(
                  children: <Widget>[
                    Icon(
                widget.icons,
                color: Colors.indigo,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    widget.text,
                    style: TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ],
          ),
        )
            : Icon(widget.icons));
  }
}

