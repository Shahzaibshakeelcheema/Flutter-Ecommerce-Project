// ignore_for_file: unnecessary_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/consts/consts.dart';
import 'package:store/consts/lists.dart';
import 'package:store/views/auth_screen/signup_screen.dart';
import 'package:store/widgets_common/applogo_widget.dart';
import 'package:store/widgets_common/bd_widget.dart';
import 'package:store/widgets_common/custom_textfield.dart';
import 'package:store/widgets_common/our_button.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            20.heightBox,
            "Login to $appname".text.fontFamily(bold).white.size(22).make(),
            20.heightBox ,
            Column(
              children: [
               customTextField(title: email,hint: emailHint),
               customTextField(title: password,hint: passwordHint),
               Align(
                //algin to end
                alignment: Alignment.centerRight,
                child: TextButton(onPressed: (){}, child: forgetPass.text.make())),
                5.heightBox,
                //ourButton().box.width(context.screenWidth-50).make(),
                ourButton(onPress: (){}, color: redColor,textColor: whiteColor, title: login ).box.width(context.screenWidth-30).make(),
                5.heightBox,
                createNewAccount.text.color(fontGrey).make(),
                5.heightBox,
                ourButton(onPress: (){Get.to(()=> const SignupScreen());}, color: lightGolden ,textColor: redColor, title: signUp ).box.width(context.screenWidth-30).make(),
                10.heightBox,
                loginWith.text.color(fontGrey).make(),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index)=>Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: CircleAvatar(
                      backgroundColor: lightGrey,
                      radius: 25,
                      child: Image.asset(socialIconList[index],width: 30,),
                    ),
                  ) ),
                )


              ],
            ).box.white.rounded.padding(EdgeInsets.all(16)).width(context.screenWidth-70).shadowSm.make(),
          ],
        ),
      ),
    ));
  }
}