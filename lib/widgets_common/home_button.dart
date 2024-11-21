import 'package:store/consts/consts.dart';

Widget homebuttons( {onPress ,height, widht, icon, String?title}){
  return 
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
  Image.asset(icon , width: 26,),
  10.heightBox,
  title!.text.fontFamily(semibold).color(darkFontGrey).make(), //title k sath ! = null check 
    ],
  ).box.rounded.white.size(widht, height).shadowSm.make();
}