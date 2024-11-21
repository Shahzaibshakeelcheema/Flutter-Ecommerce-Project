import 'package:store/consts/consts.dart';
import 'package:store/consts/lists.dart';
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
              10.heightBox,
              //featured categories
              Align(
                alignment: Alignment.centerLeft,
                child: featuredcategories.text.size(18).fontFamily(semibold).color(darkFontGrey).make(),
                
                ),
              ],
             ),
           ),
         ),
        ],
      ))
    );
  }
}