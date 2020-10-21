import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
          ),
        ],
      ),
      padding: EdgeInsets.all(20),
      child: SvgPicture.asset(
        'assets/icons/icon.svg',
        width: 80,
        height: 80,
      ),
    );
  }
}
