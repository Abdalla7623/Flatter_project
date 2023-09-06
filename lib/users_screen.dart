import 'dart:ffi';

import 'package:flutter/material.dart';

class UserModel {
  final int id;
  final String name;
  final String phone;
  UserModel({
    required this.id,
    required this.name,
    required this.phone,
  });
}

class users_screen extends StatelessWidget {
  List<UserModel>users=[
    UserModel(
      id: 1,
      name: 'Abdalla ahmed',
      phone: '01014809038',
    ),
    UserModel(
      id: 2,
      name: 'mazen ahmed',
      phone: '01020809538',
    ),
    UserModel(
      id: 3,
      name: 'Abdalla mohamed',
      phone: '01011469038',
    ),
    UserModel(
      id: 4,
      name: 'eyad mohamed',
      phone: '01007809038',
    ),
    UserModel(
      id: 5,
      name: 'Youssef ahmed',
      phone: '01214809038',
    ),
    UserModel(
      id: 6,
      name: 'mohaned osama ',
      phone: '01114809038',
    ),
    UserModel(
      id: 7,
      name: 'Nour ezz',
      phone: '01224809038',
    ),
    UserModel(
      id: 8,
      name: 'Ahmed Ali',
      phone: '01000809038',
    ),
    UserModel(
      id: 9,
      name: 'Assem mamdouh',
      phone: '01110009038',
    ),
    UserModel(
      id: 10,
      name: 'ahmed hossam',
      phone: '01213509038',
    ),
    UserModel(
      id: 11,
      name: 'Abdalla mohamed',
      phone: '01011469038',
    ),
    UserModel(
      id: 12,
      name: 'eyad mohamed',
      phone: '01007809038',
    ),
    UserModel(
      id: 13,
      name: 'Youssef ahmed',
      phone: '01214809038',
    ),
    UserModel(
      id: 14,
      name: 'mohaned osama ',
      phone: '01114809038',
    ),
    UserModel(
      id: 15,
      name: 'mazen ahmed',
      phone: '01020809538',
    ),
  ];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text('users',),
      ),
      body: ListView.separated(
          itemBuilder: (context,index)=>buildUserItem(users[index]),
          separatorBuilder:(context,index)=>Padding(
            padding: const EdgeInsetsDirectional.only(
                start: 20.0,
            ),
            child: Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
            ),
          ),
          itemCount:users.length ),
    );
  }
  Widget buildUserItem(UserModel user)=>Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 20,
          child: Text(
            '${user.id}',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(width: 20,),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${user.name}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${user.phone}',
              style: TextStyle(
                color: Colors.grey,
              ),

            ),
          ],
        ),
      ],
    ),
  );
}

