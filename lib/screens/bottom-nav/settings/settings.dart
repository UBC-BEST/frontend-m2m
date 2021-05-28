import 'package:flutter/material.dart';
import 'package:frontend_m2m/services/auth.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Settings"),
        ElevatedButton(
          child: Text("Sign out"),
          onPressed: () async {
            await _auth.signOut();
          },
        ),
      ],
    );
  }
}
