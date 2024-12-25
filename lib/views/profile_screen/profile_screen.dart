import 'package:flutter/material.dart';
import 'package:store/consts/consts.dart';
import 'package:store/consts/lists.dart';
import 'package:store/views/profile_screen/components/details_card.dart';
import 'package:store/widgets_common/bd_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              // Edit Profile Button
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.edit,color: whiteColor,).onTap((){})),
              ),
                // User Detail Section 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Image.asset(imgProfile2,width: 100,fit: BoxFit.cover,).box.roundedFull.clip(Clip.antiAlias).make(),
                    10.widthBox,
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Dummy User".text.fontFamily(semibold).white.make(),
                        "Cumtomer@example.com".text.white.make(),
                      ],
                    )),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: whiteColor
                        )
                      ),
                      onPressed: (){}, child: logout.text.fontFamily(semibold).white.make())
                  ],
                ),
              ),
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DetailsCard(count: "00", title: "In Your Cart" , width: context.screenWidth/3.4),
                  DetailsCard(count: "80", title: "In Your WishList" , width: context.screenWidth/3.4),
          
                  DetailsCard(count: "100", title: "Your Orders" , width: context.screenWidth/3.4),
          
                 
                ],
              ),
              //Buttons Section
              ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return Divider(
                    color:lightGrey,
                  );
                },
                itemCount: profileButtonsList.length,
                itemBuilder: (BuildContext context, int index){
                  return ListTile(
                    leading: Image.asset(profileButtonsIcons[index],width: 20,),
                    title: "${profileButtonsList[index]}".text.fontFamily(semibold).color(darkFontGrey).make(),
                  );
                },
          
              ).box.white.rounded.margin(EdgeInsets.all(12)).padding(EdgeInsets.symmetric(horizontal: 16)).shadowSm.make().box.color(redColor).make()
            ],
            
          ),
        ),
      )
    );  }
}