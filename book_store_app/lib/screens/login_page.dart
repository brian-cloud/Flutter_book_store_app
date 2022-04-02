import 'package:book_store_app/widgets/create_account_form.dart';
import 'package:book_store_app/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isCreateAccountClicked = false;
  //final GlobalKey<FormState> _globalKey;

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue.shade50,
              )),
          Text(
            'SignIn',
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              SizedBox(
                  width: 300,
                  height: 300,
                  child: isCreateAccountClicked != true
                      ? Loginwidget(
                          formKey: _formKey,
                          emailTextController: _emailTextController,
                          passwordTextController: _passwordTextController)
                      : CreateAccountForm(
                          formKey: _formKey,
                          emailTextController: _emailTextController,
                          passwordTextController: _passwordTextController)),
              TextButton.icon(
                  icon: Icon(Icons.portrait_rounded),
                  style: TextButton.styleFrom(
                      primary: Colors.orange.shade500,
                      textStyle:
                          TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
                  onPressed: () {
                    setState(() {
                      if (!isCreateAccountClicked) {
                        isCreateAccountClicked = true;
                      } else
                        isCreateAccountClicked = false;
                    });
                  },
                  label: Text('Create Account'))
            ],
          ),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue.shade50,
              ))
        ],
      ),
    ));
  }
}
