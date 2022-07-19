import 'package:flutter/material.dart';
import 'package:navigation_side_bar/model/bottom_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

enum BottomIcons {Home, Favorite, Search, Account}

class _MainPageState extends State<MainPage> {

  BottomIcons bottomIcons = BottomIcons.Home;

  int _selectedIndex = 0;

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          bottomIcons ==BottomIcons.Home?
              Center(
                child: Text(
                  'Home Page', style: TextStyle(fontSize: 18),
                ),
              ): Container(),

          bottomIcons ==BottomIcons.Favorite?
          Center(
            child: Text(
              'Favorite Page', style: TextStyle(fontSize: 18),
            ),
          ): Container(),

          bottomIcons ==BottomIcons.Search?
          Center(
            child: Text(
              'Search Page', style: TextStyle(fontSize: 18),
            ),
          ): Container(),

          bottomIcons ==BottomIcons.Account?
          Center(
            child: Text(
              'Account Page', style: TextStyle(fontSize: 18),
            ),
          ): Container(),

          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 24, right: 24, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  BottomBar(
                      pressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Home;
                        });
                      },
                      bottomIcons: bottomIcons == BottomIcons.Home?true:false,
                      text: "Home",
                      icons: Icons.home),
                  BottomBar(
                      pressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Favorite;
                        });
                      },
                      bottomIcons: bottomIcons == BottomIcons.Favorite?true:false,
                      text: "Favorite",
                      icons: Icons.favorite),
                  BottomBar(
                      pressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Search;
                        });
                      },
                      bottomIcons: bottomIcons == BottomIcons.Search?true:false,
                      text: "Search",
                      icons: Icons.search),
                  BottomBar(
                      pressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Account;
                        });
                      },
                      bottomIcons: bottomIcons == BottomIcons.Account?true:false,
                      text: "Home",
                      icons: Icons.account_circle),
                ],
              )
            ),
          )
        ],
      ),

    );
  }
}
