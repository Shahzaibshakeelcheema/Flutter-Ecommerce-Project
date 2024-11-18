import 'package:get/get.dart';
import 'package:store/consts/consts.dart';
import 'package:store/controllers/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
// calling home controller

var controller = Get.put(HomeController());

    
    var navbarItems =[
      BottomNavigationBarItem(icon: Image.asset(icHome , width: 26,), label :home),
      BottomNavigationBarItem(icon: Image.asset(icCategories , width: 26,), label :categories),
      BottomNavigationBarItem(icon: Image.asset(icCart , width: 26,), label :cart),
      BottomNavigationBarItem(icon: Image.asset(icProfile , width: 26,), label :account),

    ];


  var navBody =[
    Container(color: Colors.blue,),
    Container(color: Colors.green,),
    Container(color: Colors.yellow,),
    Container(color: Colors.purple,),


  ];
    return Scaffold(
      body: Column(//bkz we cant wrap body first element with expanded
        children: [
          Obx(//is sy baki screens show hon gi 
            ()=> Expanded(child: navBody.elementAt(controller.currentNavIndex.value),
            
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(()=>
        BottomNavigationBar(
        currentIndex: controller.currentNavIndex.value,
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
        selectedItemColor: redColor,
        selectedLabelStyle: const TextStyle(fontFamily: semibold),
          items: navbarItems,
          onTap:(value){
controller.currentNavIndex.value=value;
          },
      ),),
    );
  }
}