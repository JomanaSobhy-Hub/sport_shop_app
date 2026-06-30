import 'package:flutter/material.dart';

class app_text_field extends StatefulWidget {
  final String hintText;
  final String text;
  const app_text_field({super.key, required this.hintText, required this.text});

  @override
  State<app_text_field> createState() => _app_text_fieldState();
}

class _app_text_fieldState extends State<app_text_field> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            widget.text,
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ),

        SizedBox(height: 4),
        Container(
          height: 60,
          width: 326,
          margin: const EdgeInsets.symmetric(horizontal: 12.0),
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: widget.hintText,
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
            ),
          ),
        ),
      ],
    );
  }

  //return const Placeholder();
}
