// ignore: unnecessary_import
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/consts/consts.dart';
import 'package:store/widgets_common/applogo_widget.dart';
import 'package:store/widgets_common/bd_widget.dart';
import 'package:store/widgets_common/custom_textfield.dart';
import 'package:store/widgets_common/our_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isChecked =false;
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
            "Join $appname".text.fontFamily(bold).white.size(22).make(),
            20.heightBox ,
            Column(
              children: [
               customTextField(title: name,hint: nameHint),
               customTextField(title: email,hint: emailHint),
               customTextField(title: password,hint: passwordHint),
               customTextField(title: retypePass,hint: passwordHint),
              
                5.heightBox,
                //ourButton().box.width(context.screenWidth-50).make(),
              
                Row(
                  children: [
                    Checkbox(checkColor: redColor, value: isChecked, onChanged: (newValue){
                      setState(() {
                                              isChecked = newValue;

                      });
                    }),
                    5.widthBox,
                Expanded(
                  child: RichText(text: const TextSpan(
                    children: [
                      TextSpan(text : "I agree to the ",style:TextStyle(
                        fontFamily:regular,
                        color:fontGrey,
                        
                        )
                      ),
                      TextSpan(text : privcyPolicy,style:TextStyle(
                        fontFamily:semibold,
                        color:redColor
                        )
                      ),
                      TextSpan(text : " and ",style:TextStyle(
                        fontFamily:regular,
                        color:fontGrey
                        )
                      ),
                      TextSpan(text : termsAndConditions,style:TextStyle(
                        fontFamily:semibold,
                        color:redColor
                        )
                      )
                    ]
                  )),
                ),
                  ],
                ),
                ourButton(onPress: (){}, color: isChecked== true ? redColor : lightGrey ,textColor: whiteColor, title: signUp ).box.width(context.screenWidth-30).make(),
                10.heightBox,
              //  10.heightBox,
              //OLD METHOD FOR SPANTEXT 
                // GestureDetector(
                //   child: RichText(
                //     text: const TextSpan(
                //       children: [
                //         TextSpan(text : alreadyHaveAccount,
                //         style:TextStyle(
                //           fontFamily:regular,
                //           color:fontGrey,)
                //         ),
                //         TextSpan(text : login,
                //         style:TextStyle(
                //           fontFamily:bold,
                //           color:redColor)
                //         )
                //         ],
                //         ),
                //   ).onTap((){Get.back();}),
                // ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      alreadyHaveAccount.text.color(fontGrey).make(),
                      login.text.color(redColor).fontFamily(bold).make().onTap(() {
                      Get.back();
                      })

                  ],)

                // 10.heightBox,
                // alreadyHaveAccount.text.color(fontGrey).make(),
                // 5.heightBox,
                // ourButton(onPress: (){Get.to(()=> const LoginScreen());}, color: lightGolden,textColor: redColor, title: login ).box.width(context.screenWidth-30).make(),
                


              ],
            ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth-70).shadowSm.make(),
          ],
        ),
      ),
    ));
  }
}