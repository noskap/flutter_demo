import 'package:flutter/material.dart';
import 'package:flutter_demo/core/common/constants/text-keys.dart';
import 'package:flutter_demo/core/common/constants/text_input_style.dart';
import 'package:flutter_demo/core/common/localization/Localizations.dart';
import 'package:flutter_demo/core/screens/my-details/widgets/display-picture.widget.dart';

class MyDetails extends StatelessWidget {
  final double _spacing = 20.0;

  String fullName = '';
  String nickname = '';
  String phoneNumber = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)?.translate(TextKeys.MyDetails) ?? ''), centerTitle: true),
      body: SingleChildScrollView(
        child: Form(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DisplayPictureWidget(),
                      Expanded(
                        child: ElevatedButton(
                          child: Text(AppLocalizations.of(context)?.translate(TextKeys.Camera) ?? ''),
                          onPressed: () async {
                            // await Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (BuildContext context) => CameraWidget(),
                            //   ),
                            // );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                TextFormField(
                  decoration: textInputDecoration,
                  // initialValue: '${user != null ? user.email : AppLocalizations.of(context).translate(TextKeys.NoUser)}',
                  enabled: false,
                ),
                SizedBox(height: _spacing),
                TextFormField(
                  initialValue: nickname,
                  // decoration: textInputDecoration.copyWith(hintText: AppLocalizations.of(context).translate(TextKeys.Nickname)),
                  // validator: (val) => val.isEmpty ? AppLocalizations.of(context).translate(TextKeys.EnterANickname) : null,
                  onChanged: (val) => {
                    // setState(() {
                    //   nickname = val;
                    // })
                  },
                ),
                SizedBox(height: _spacing),
                Text(AppLocalizations.of(context)?.translate(TextKeys.ThisNameWillBeDisplayedPubliclyForTheAppInChallenges) ?? ''),
                SizedBox(height: _spacing),
                TextFormField(
                  initialValue: nickname,
                  // decoration: textInputDecoration.copyWith(hintText: AppLocalizations.of(context).translate(TextKeys.FullName)),
                  // validator: (val) => val.isEmpty ? AppLocalizations.of(context).translate(TextKeys.EnterFullName) : null,
                  onChanged: (val) => {
                    // setState(() {
                    //   fullName = val;
                    // })
                  },
                ),
                SizedBox(height: _spacing),
                TextFormField(
                  initialValue: nickname,
                  // decoration: textInputDecoration.copyWith(hintText: AppLocalizations.of(context).translate(TextKeys.PhoneNumber)),
                  // validator: (val) => val.isEmpty ? AppLocalizations.of(context).translate(TextKeys.EnterPhoneNumber) : null,
                  onChanged: (val) => {
                    // setState(() {
                    //   phoneNumber = val;
                    // })
                  },
                ),
                SizedBox(height: _spacing),
                ElevatedButton(
                  child: Text(AppLocalizations.of(context)?.translate(TextKeys.Save) ?? ''),
                  onPressed: () async {
                    // if (_formKey.currentState.validate()) {
                    //   print('✅ Nickname: $nickname, Full name: $fullName, Phone: $phoneNumber');
                    //   // TODO  create password reset functionality
                    // }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
