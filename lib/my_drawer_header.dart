import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({Key? key}) : super(key: key);

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[700],
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 45.0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/image.jpg',),
                fit: BoxFit.cover,
              )
            ),
          ),
          Text('Bilash Hossain', style: TextStyle(color: Colors.white, fontSize: 20),),
          Text(
            'info@gmail.com',
            style: TextStyle(color: Colors.grey[200], fontSize: 14),
          )
        ],
      ),

    );
  }
}
