//import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/consts/consts.dart';
import 'package:store/views/auth_screen/login_screen.dart';
import 'package:store/widgets_common/applogo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
// change screen fuction using getx 
changeScreen(){

Future.delayed(const Duration(seconds: 3), () {
  //using getx
  Get.to(()=>const LoginScreen());
}
);
}
@override
  void initState() {
   
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child:Column(
            children: [
              Align( alignment: Alignment.topLeft, child: Image.asset(icSplashBg, width: 300,)),
              20.heightBox,
              applogoWidget(),
              10.heightBox,
              appname.text.fontFamily(bold).size(22).white.make(),
              appversion.text.fontFamily(semibold).size(14).white.make(),
              const Spacer(),
              credits.text.fontFamily(semibold).size(14).white.make(),
              30.heightBox
            ],
        )
      ),
    );
  }
}