import 'package:flutter/material.dart';
import 'package:frontend_m2m/model/m2m_user.dart';
import 'package:frontend_m2m/screens/authentication/authenticate.dart';
import 'package:frontend_m2m/screens/bottom-nav/bottom-nav.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<M2MUser?>(context);
    if (user != null) {
      return Home();
    } else {
      return Authenticate();
    }
  }
}
