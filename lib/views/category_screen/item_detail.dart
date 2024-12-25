// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:store/consts/consts.dart';
import 'package:store/consts/lists.dart';
import 'package:store/widgets_common/our_button.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
          // ignore: prefer_const_constructors, prefer_const_literals_to_create_immutables
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
          ],
        ),
        body: Column(
          children: [
            Expanded(
                child: Padding(
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //swiper section
                    VxSwiper.builder(
                        autoPlay: true,
                        height: 350,
                        aspectRatio: 16 / 9,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            imgFc5,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          );
                        }),
                    10.heightBox,
                    //title of item
                    title!.text
                        .size(16)
                        .fontFamily(bold)
                        .color(darkFontGrey)
                        .make(),
                    10.heightBox,
                    //item details
                    VxRating(
                      onRatingUpdate: (value) {},
                      normalColor: textfieldGrey,
                      selectionColor: golden,
                      count: 5,
                      size: 25,
                      stepInt: true,
                    ),
                    10.heightBox,
                    "\$1000"
                        .text
                        .size(18)
                        .fontFamily(bold)
                        .color(redColor)
                        .make(),
                    10.heightBox,
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              "Seller".text.fontFamily(semibold).color(whiteColor).make(),
                              5.heightBox,
                              "Magnificent Knives".text.fontFamily(semibold).color(darkFontGrey).size(16).make()

                            ],
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: whiteColor,
                          child: Icon(
                            Icons.message_rounded,
                            color: darkFontGrey,
                          ),
                        )
                      ],
                    ).box.height(60).padding(EdgeInsets.symmetric(horizontal: 16)).color(textfieldGrey).make(),
                    20.heightBox,
                    Column(
                      
                      children: [
                        Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Color : ".text.color(darkFontGrey).make(),
                          ),
                          
                          Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(3,(index)=> VxBox().size(40,40).
                        roundedFull.margin(EdgeInsets.symmetric(horizontal: 4)).
                        color(Vx.randomPrimaryColor).make()),
                      ),
                        ],
                      ).box.padding(EdgeInsets.all(8)).make(),
                      
                     
                      //quantity section 

                       Row(
                        children: [
                          SizedBox(
                             width: 100,
                            child: "Quantity : ".text.color(darkFontGrey).make(),
                          ),
                           
                           Row(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.remove)),
                          "0".text.size(16).color(darkFontGrey).fontFamily(bold).make(),
                          IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                          10.heightBox,
                          "(0 Available)".text.color(textfieldGrey).make()

                        ],)
                        ],
                      ).box.padding(EdgeInsets.all(8)).make(),

                      Row(
                        children: [
                          SizedBox(
                             width: 100,
                            child: "Total Price : ".text.color(darkFontGrey).make(),
                          ),
                           
                           Row(
                        children: [
                         
                          "\$0.00".text.color(redColor).fontFamily(bold).size(18).make()

                        ],)
                        ],
                      ).box.padding(EdgeInsets.all(8)).make(),
                      
                     
                      ],
                    ).box.color(whiteColor).shadowSm.make(),
                  10.heightBox,
                  "Description  ".text.color(darkFontGrey).fontFamily(semibold).make(),
                  10.heightBox,
                  "This is a Dummy Description of a dummy item.... wertyu ghjhkjm gvhgjk ghjk ghjk ghjk ghjk ghjk ghjk ghjk ghj  ".text.color(darkFontGrey).make(),
                  20.heightBox,
                  // button section
                  // ListView(
                  //   children: List.generate(5, (index)=> Row(

                  //   ).box.make(),),
                  // )

                  ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: List.generate(itemDetailsButtonList.length, (index)=> ListTile(
                      title: "${itemDetailsButtonList[index]}".text.fontFamily(semibold).color(darkFontGrey).make(),
                      trailing: Icon(Icons.arrow_forward),
                    )),
                  ),
                  20.heightBox,
                  productYouMayLike.text.fontFamily(semibold).color(darkFontGrey).make(),
                  20.heightBox,
                  //copied this wiget from home screen 
                  SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(6, 
                          (index)=> Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(imgP1,width: 150, fit: BoxFit.cover,),
                              10.heightBox,
                              "Laptop : 4GB/128 SSD ".text.fontFamily(semibold).color(darkFontGrey).make(),
                              10.heightBox,
                              "\$600".text.fontFamily(bold).size(16).color(redColor).make(),
                            ],
                          ).box.white.roundedSM.margin(const EdgeInsetsDirectional.symmetric(horizontal: 4)).padding(const EdgeInsets.all(8)).make()),
                        ),
                      ),
                  ],
                ),
              ),
            )),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ourButton(
                  onPress: () {},
                  color: redColor,
                  textColor: whiteColor,
                  title: "Add to Cart"),
            )
          ],
        ));
  }
}
