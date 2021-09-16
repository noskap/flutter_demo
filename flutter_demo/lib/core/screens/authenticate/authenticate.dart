import 'package:flutter/material.dart';
import 'package:flutter_demo/core/screens/authenticate/screens/sign-in/sign-in.dart';

class Authenticate extends StatelessWidget {
  bool showSignIn = true;

  void toggleView() {
    // setState(() { TODO consumer
    showSignIn = !showSignIn;
    // });
  }

  @override
  Widget build(BuildContext context) {
    // pass the toggleView function to SignIn & Register screens
    return SignIn(toggleView: toggleView);
  }
}
