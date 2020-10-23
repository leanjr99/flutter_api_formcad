import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api_formcad/utils/responsive.dart';
import 'package:flutter_api_formcad/widgets/circle.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = 'register';
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    final double pinkSize = responsive.wp(88);
    final double orangeSize = responsive.wp(57);

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: responsive.height,
            color: Colors.white,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  top: -pinkSize * 0.3,
                  right: -pinkSize * 0.2,
                  child: Circle(
                    size: pinkSize,
                    colors: [
                      Colors.pinkAccent,
                      Colors.pink,
                    ],
                  ),
                ),
                Positioned(
                  top: -orangeSize * 0.35,
                  left: -orangeSize * 0.15,
                  child: Circle(
                    size: orangeSize,
                    colors: [
                      Colors.orange,
                      Colors.deepOrangeAccent,
                    ],
                  ),
                ),
                Positioned(
                  top: pinkSize * 0.19,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Hello!\nSign up to get started.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: responsive.dp(4.3),
                        ),
                      ),
                      SizedBox(height: responsive.dp(8)),
                      ClipOval(
                        child: Image.network(
                          'https://www.w3schools.com/howto/img_avatar.png',
                          width: responsive.wp(25),
                          height: responsive.wp(25),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 30,
                  child: CupertinoButton(
                    color: Colors.black26,
                    padding: EdgeInsets.all(10),
                    borderRadius: BorderRadius.circular(30),
                    child: Icon(Icons.arrow_back),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
