import 'package:biometric_auth/utils/auathentication.dart';
import 'package:biometric_auth/utils/home.dart';
import 'package:flutter/material.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 28),
            Text(
              'Use your fingure print to log in to app',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 28,
            ),
            Divider(
              color: Colors.white60,
            ),
            SizedBox(
              height: 28,
            ),
            ElevatedButton.icon(
              onPressed: () async {
                bool auth = await Authentication.authentication();
                print('can authenticate :$auth');
                if (auth) {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                }
              },
              icon: Icon(Icons.fingerprint_rounded),
              label: Text(
                'Authenticate',
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      )),
    );
  }
}
