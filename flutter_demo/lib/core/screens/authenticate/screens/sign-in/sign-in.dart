import 'package:flutter/material.dart';
import 'package:flutter_demo/common/constants/text-keys.dart';
import 'package:flutter_demo/common/constants/text_input_style.dart';
import 'package:flutter_demo/common/localization/Localizations.dart';
import 'package:flutter_demo/common/widgets/loading.dart';

import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignIn extends StatelessWidget {
  final Function toggleView;

  SignIn({required this.toggleView});

  final _formKey = GlobalKey<FormState>();
  bool loading = false;
  bool showResendVerificationMessage = false;

  String email = '';
  String error = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.grey[300],
            appBar: AppBar(
              title: Text(AppLocalizations.of(context)?.translate(TextKeys.PleaseSignIntoTheApp) ?? ''),
              actions: [
                TextButton.icon(
                  onPressed: () {
                    // widget.toggleView();
                  },
                  icon: Icon(Icons.person),
                  label: Text(AppLocalizations.of(context)?.translate(TextKeys.Register) ?? ''),
                ),
              ],
            ),
            body: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(height: 20.0),
                    TextFormField(
                      initialValue: email,
                      decoration: textInputDecoration.copyWith(hintText: AppLocalizations.of(context)?.translate(TextKeys.Email) ?? ''),
                      // validator: (val) => val!.length < 3 ? AppLocalizations.of(context)?.translate(TextKeys.EnterAnEmail)??'' : null,
                      onChanged: (val) => {
                        // setState(() {
                        //   email = val;
                        // })
                      },
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      initialValue: password,
                      decoration: textInputDecoration.copyWith(hintText: AppLocalizations.of(context)?.translate(TextKeys.Password)),
                      validator: (val) => val!.length < 3 ? AppLocalizations.of(context)?.translate(TextKeys.EnterAPasswordError) : null,
                      obscureText: true,
                      onChanged: (val) => {
                        // setState(() {
                        //   password = val;
                        // })
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      error,
                      style: TextStyle(color: Colors.red, fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    if (showResendVerificationMessage)
                      Column(
                        children: [
                          Text(AppLocalizations.of(context)?.translate(TextKeys.PleaseVerifyYourEmailAddress) ?? ''),
                          TextButton(
                              onPressed: () {
                                // print(user);
                                // _auth.sendVerification();
                              },
                              child: Text(AppLocalizations.of(context)?.translate(TextKeys.ResendVerification) ?? '')),
                        ],
                      ),
                    SizedBox(height: 20.0),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        // color: Colors.blue,
                        child: Text(AppLocalizations.of(context)?.translate(TextKeys.LogIn) ?? '', style: TextStyle(color: Colors.white)),
                        onPressed: () async {},
                      ),
                    ),
                    SizedBox(height: 12.0),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.pushNamed(context, Routes.forgotPassword);
                        },
                        child: Text(
                          AppLocalizations.of(context)?.translate(TextKeys.ForgotPassword) ?? '',
                          style: TextStyle(color: Colors.black87),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    SignInButton(
                      Buttons.GoogleDark,
                      onPressed: () async {},
                    ),
                    SignInButton(
                      Buttons.Facebook,
                      onPressed: () {
                        print('sign in to facebook');
                        // TODO wire up facebook sign in
                      },
                    ),
                    SignInButton(
                      Buttons.AppleDark,
                      onPressed: () {
                        print('sign in to apple');
                        // TODO wire up apple sign in
                      },
                    ),
                    Text(error, style: TextStyle(color: Colors.red, fontSize: 14.0)),
                  ],
                ),
              ),
            ),
          );
  }
}
