import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? color;
  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return ElevatedButton(
    //   child: Text(
    //     text,
    //     style: TextStyle(
    //       color: color == null ? Colors.white : Colors.black,
    //     ),
    //   ),
    //   onPressed: onTap,
    //   style: ElevatedButton.styleFrom(
    //     minimumSize: const Size(double.infinity, 50),
    //     primary: color,
    //   ),
    // );
    return MaterialButton(
      minWidth: double.infinity,
      height: 60,
      onPressed: onTap,
      color: Color.fromARGB(255, 82, 174, 255),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white),
      ),
    );
  }
}
