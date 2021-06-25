import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final Function onTap;
  CustomButton({this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Material(
        color: Colors.blueAccent[100],
        child: InkWell(
          highlightColor: Colors.blueAccent[100],
          onTap: onTap,
          child: Center(
            child: Text(
              'Buat Pengingat Baru',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
