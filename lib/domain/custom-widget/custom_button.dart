import 'package:chapasdk/domain/constants/app_colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
/// A customizable button widget that allows setting a title, background color,
/// and an onPressed callback function. It uses `ElevatedButton` for its structure.
///
/// The size of the button adjusts based on the device's screen size for
/// responsiveness.
// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  /// A callback Function to be executed when the button is pressed
  Function onPressed;

  /// Optional background color for the button
  Color? backgroundColor;

  /// The title of the button (text displayed)
  String title;

  ///
  CustomButton(
      {super.key,
      required this.onPressed,
      this.backgroundColor,
      required this.title});

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration( 
            color: backgroundColor ?? AppColors.chapaPrimaryColor,
            borderRadius: BorderRadius.circular(15)),
        width: deviceSize.width,
        height: deviceSize.height * 0.05,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
