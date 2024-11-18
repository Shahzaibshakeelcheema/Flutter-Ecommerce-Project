import 'package:store/consts/consts.dart';

Widget bgWidget({Widget? child}){
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(image: AssetImage(imgBackground),fit: BoxFit.fill)
    ),
    child: child,
    //is mai jo child hum pass krain gy wo aye ga
  );
}