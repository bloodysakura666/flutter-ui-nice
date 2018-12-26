import 'package:flutter/material.dart';
import 'package:flutter_ui_nice/const/gradient_const.dart';
import 'package:flutter_ui_nice/page/signup/widgets/signup_arrow_button.dart';

class SignupApbar extends StatelessWidget {
  final String title;
  SignupApbar({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: Stack(
        children: <Widget>[
          new Container(
            height: 72,
            decoration: BoxDecoration(
              gradient: SIGNUP_BACKGROUND,
            ),
          ),
          Positioned(
            left: 15,
            bottom: 5,
            child: SignUpArrowButton(
              icon: Icons.arrow_back,
              iconSize: 18,
              height: 40,
              width: 40,
              onTap: () => Navigator.of(context).pop(),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 45),
              child: Text(title,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
