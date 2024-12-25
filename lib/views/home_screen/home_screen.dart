import 'package:store/consts/consts.dart';
import 'package:store/consts/lists.dart';
import 'package:store/views/home_screen/components/featured_button.dart';
import 'package:store/widgets_common/home_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(child: Column(
        children: [
          Container(
            
            height: 60,
            alignment: Alignment.center,          
            color: lightGrey,
            child: TextFormField(
              
              decoration: const InputDecoration(
                border: InputBorder.none,
                suffixIcon: Icon(Icons.search),
                filled: true,
                fillColor: whiteColor,
                hintText: searchanything,
                hintStyle: TextStyle(color: textfieldGrey)

              ),
            ),
          ),
         Expanded(
          //using single child for making page scrollable
           child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
             child: Column(
              children: [
                 //slider main top
              VxSwiper.builder(
                aspectRatio:16/9,
                autoPlay: true,
                height: 150,
                enlargeCenterPage: true,
                itemCount: slidersList.length, itemBuilder: (context ,index ){
                
                
                return Image.asset(slidersList[index], fit:BoxFit.fill).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make(); //margin(EdgeInsets.symmetric(horizontal: 8) for adding space between
              }),
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(2, (index)=>homebuttons(
                  height : context.screenHeight*0.15,
                  widht : context.screenWidth/2.5,
                  icon: index ==0 ?icTodaysDeal : icFlashDeal,
                  title : index==0 ? todaydeal : flashSale,
              
                )),
              ),
              // 2nd slider 
              10.heightBox,
              VxSwiper.builder(
                aspectRatio:16/9,
                autoPlay: true,
                height: 150,
                enlargeCenterPage: true,
                itemCount: secondSlidersList.length, itemBuilder: (context ,index ){
                
                
                return Image.asset(secondSlidersList[index], fit:BoxFit.fill).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make(); //margin(EdgeInsets.symmetric(horizontal: 8) for adding space between
              }),
              10.heightBox,
               
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(3, (index)=>homebuttons(
                  height : context.screenHeight*0.15,
                  widht : context.screenWidth/3.5,
                  icon: index ==0 ?icTopCategories : index==1 ? icBrands : icTopSeller,
                  title : index ==0 ?topcategoies : index==1 ? brands : topSellers,
              
                )),
              ),
              20.heightBox,
              //featured categories
              Align(
                alignment: Alignment.centerLeft,
                child: featuredcategories.text.size(18).fontFamily(semibold).color(darkFontGrey).make(),
                
                ),
                20.heightBox,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,//for making featured button scrollable
                  child: Row(
                    children: List.generate(3, (index)=> Column(
                      children: [
                        featuredbutton(icon: featuredImages1[index] , title: featuredTitles1[index]),
                        10.heightBox,
                        featuredbutton(icon: featuredImages2[index], title: featuredTitles2[index])
                      ],
                    )).toList(),
                  ),
                ),
//=================================================
                //featured products view 
//=================================================
                20.heightBox,
                Container(
                  padding: const EdgeInsets.all(12),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                  color: redColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      featuredProduct.text.white.fontFamily(bold).size(18).make(),
                      10.heightBox,
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
                      )
                    ],
                  ),
                ),
      //===============================
                //THIRD SWIPER
    //=================================
              20.heightBox,
               VxSwiper.builder(
                aspectRatio:16/9,
                autoPlay: true,
                height: 150,
                enlargeCenterPage: true,
                itemCount: secondSlidersList.length, itemBuilder: (context ,index ){
                
                
                return Image.asset(secondSlidersList[index], fit:BoxFit.fill).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make(); //margin(EdgeInsets.symmetric(horizontal: 8) for adding space between
              }),
              20.heightBox,
    //===============================
                //ALL PRODUCTS
    //================================= 
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 ,mainAxisSpacing: 8, crossAxisSpacing: 8,mainAxisExtent: 300), //mainAxisExtent is for height
                itemBuilder: (context , index){
                return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                              Image.asset(imgP5,width: 200, height: 200, fit: BoxFit.cover,),
                              const Spacer(),
                              "Laptop : 4GB/128 SSD ".text.fontFamily(semibold).color(darkFontGrey).make(),
                              10.heightBox,
                              "\$600".text.fontFamily(bold).size(16).color(redColor).make(),
                            ],
                          ).box.white.roundedSM.margin(const EdgeInsetsDirectional.symmetric(horizontal: 4)).padding(const EdgeInsets.all(12)).make();
              })
              


              ],
             ),
           ),
         ),
        ],
      ))
    );
  }
}