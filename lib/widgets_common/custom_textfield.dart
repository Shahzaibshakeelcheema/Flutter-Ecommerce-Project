// ignore_for_file: prefer_const_constructors

import 'package:store/consts/consts.dart';

Widget customTextField({String? title, String ? hint}){
  return  Column(
    crossAxisAlignment: CrossAxisAlignment.start,// email to right corner
    children: [
      title!.text.fontFamily(semibold).color(redColor).size(16).make(),
      5.heightBox,
      TextFormField(
        //controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            fontFamily: semibold,
            color: textfieldGrey
          ),
          isDense: true,
          fillColor: lightGrey,
          filled:true,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: redColor
            )
          )
        ),
        
      ),
      5.heightBox
    ],
  );
}