// ignore: unused_import
import 'package:flutter/foundation.dart';
// ignore: unnecessary_import
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/consts/consts.dart';
import 'package:store/consts/lists.dart';
import 'package:store/views/category_screen/category_detail.dart';
import 'package:store/widgets_common/bd_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: categories.text.fontFamily(bold).color(whiteColor).make(),
        ),
        body: Container(
          
          padding: const EdgeInsets.all(12),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3 , mainAxisSpacing: 8, crossAxisSpacing: 8, mainAxisExtent: 200), itemBuilder: (context , index){
            return Column(
              children: [
                Image.asset(categoryImages[index],height: 120,width: 200,fit: BoxFit.cover),
                10.heightBox,
                categoriesList[index].text.color(darkFontGrey).align(TextAlign.center).make(),
              ],
            ).box.white.roundedSM.clip(Clip.antiAlias).outerShadowSm.padding(const EdgeInsets.all(4)).make().onTap((){
              Get.to(()=> CategoryDetails(title: categoriesList[index]));
            });
          }),
        ),
      )
    );
  }
}