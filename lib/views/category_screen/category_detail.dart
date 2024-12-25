// ignore: unnecessary_import
// ignore_for_file: prefer_const_constructors, unused_import, unnecessary_import, duplicate_ignore

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:store/consts/consts.dart';
import 'package:store/consts/lists.dart';
import 'package:store/views/category_screen/item_detail.dart';
import 'package:store/widgets_common/bd_widget.dart';

class CategoryDetails extends StatelessWidget {
  final String?title;
  const CategoryDetails({super.key , required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: title!.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(6, (index)=>" Baby Clothing".text.size(12).fontFamily(semibold).color(darkFontGrey).makeCentered().box.white.rounded.size(120,60).margin(EdgeInsets.symmetric(horizontal: 4)).padding(EdgeInsets.all(4)).make()),
                ),
              ),
              //==========================================
                          //items Container 
            //============================================
20.heightBox,
          Expanded(child: GridView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 250), itemBuilder: (context,index){
            return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                              Image.asset(imgP5,width: 200, height: 150, fit: BoxFit.cover,),
                              "Laptop : 4GB/128 SSD ".text.fontFamily(semibold).color(darkFontGrey).make(),
                              10.heightBox,
                              "\$600".text.fontFamily(bold).size(16).color(redColor).make(),
                            ],
                          ).box.white.roundedSM.outerShadowSm.margin(const EdgeInsetsDirectional.symmetric(horizontal: 4)).padding(const EdgeInsets.all(12)).make().onTap((){
                            Get.to(()=> ItemDetails(title: "Dummy Item"));
                          });
          }))

            ],
            
          ),
        ),
      )
    );
    
  }
}