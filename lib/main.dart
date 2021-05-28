import 'package:flutter/material.dart';
import 'package:frontend_m2m/model/m2m_user.dart';
import 'package:frontend_m2m/screens/new-user/walkthrough_screens/walkthrough1.dart';
import 'package:frontend_m2m/screens/new-user/walkthrough_screens/walkthrough_template.dart';
import 'package:frontend_m2m/screens/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:frontend_m2m/services/auth.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<M2MUser?>.value(
      initialData: null,
      value: AuthService().user,
      child: MaterialApp(
        home: Walkthrough1(),
      ),
    );
  }
}
