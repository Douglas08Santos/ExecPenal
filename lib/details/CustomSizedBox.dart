import 'package:flutter/cupertino.dart';

class CustomSizedBox extends StatelessWidget {
  double width;
  double height;

  CustomSizedBox(this.width, this.height, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
