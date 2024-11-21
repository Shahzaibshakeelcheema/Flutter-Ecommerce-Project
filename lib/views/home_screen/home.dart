import 'package:get/get.dart';
import 'package:store/consts/consts.dart';
import 'package:store/controllers/home_controller.dart';
import 'package:store/views/cart_screen/cart_screen.dart';
import 'package:store/views/category_screen/category_screen.dart';
import 'package:store/views/home_screen/home_screen.dart';
import 'package:store/views/profile_screen/profile_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
    // Container(color: Colors.blue,),
    // Container(color: Colors.green,),
    // Container(color: Colors.yellow,),
    // Container(color: Colors.purple,),
const HomeScreen(),
const CategoryScreen(),
const CartScreen(),
const ProfileScreen()


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