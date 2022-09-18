import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(
                Icons.phone_android_sharp,
                size: 100,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Hi... Register here',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Don\'t forgot to visit again!!',
                style: TextStyle(
                  fontSize: 21,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Name',
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Re-enter password',
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Container(
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: FlatButton(
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/login_page');
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already Registered? ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    child: Text(
                      'Login now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/login_page');
                    },
                  )
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
