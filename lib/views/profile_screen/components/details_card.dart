import 'package:store/consts/consts.dart';

Widget DetailsCard({width , String? count , String? title}) {
  return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    count!.text.fontFamily(semibold).size(16).color(darkFontGrey).make(),
                    5.heightBox,
                    title!.text.make(),
                  ],
                ).box.white.width(width).height(80).padding(EdgeInsets.all(4)).rounded.make();
}