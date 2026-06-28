import 'package:flutter/material.dart';

class AppSearchField extends StatefulWidget {
  final String hintText;

  const AppSearchField({super.key, required this.hintText});

  @override
  State<AppSearchField> createState() => _AppSearchFieldState();
}

class _AppSearchFieldState extends State<AppSearchField> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Expanded(
          child: Container(
            height: 55,
            decoration: BoxDecoration(
              color:  Color(0xffF8F9FA),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
    color: Color(0xffE5E7EB),
  ),
              
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: widget.hintText,
                prefixIcon: Icon(Icons.search,size: 25,),
                contentPadding: EdgeInsets.symmetric(vertical: 18),
              ),
            ),
          ),
        ),
      ],
    );
  }
}