import 'package:book_store_app/screens/login_page.dart';
import 'package:book_store_app/widgets/input_decoration.dart';
import 'package:book_store_app/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'dart:js';

import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CircleAvatar(
        backgroundColor: Colors.black12,
        child: Column(children: [
          Spacer(),
          Text(
            'BookTracker',
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Read And Change Yourself',
            style: TextStyle(
                color: Colors.black26,
                fontSize: 29,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50,
          ),
          TextButton.icon(
              style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.green.shade700,
                  textStyle: TextStyle(fontSize: 18)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ));
              },
              icon: Icon(Icons.login_rounded),
              label: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Sign in to get started'),
              )),
          Spacer()
        ]),
      ),
    );
  }
}
