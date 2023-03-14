import 'package:flutter/material.dart';
import 'package:session_5/data.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double scereenWidth = MediaQuery.of(context).size.width;
    double scereenHigh = MediaQuery.of(context).size.height;
    double imageSize = scereenHigh/3;
    return Column(
        children: [
          SizedBox(height: scereenHigh/45,),
          const Text("Pizza", style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold,fontSize: 30),),
          SizedBox(height: scereenHigh/60,),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.zero,
                itemBuilder: (context, index) => Image.asset(page1_list[index],height: imageSize,width: double.infinity,fit: BoxFit.cover,),
                separatorBuilder: (context, index) => const SizedBox(height: 10,),
                itemCount: page1_list.length
            ),
          ),
        ],
    );
  }
}
