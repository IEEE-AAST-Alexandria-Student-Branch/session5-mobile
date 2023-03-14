import 'package:flutter/material.dart';

import '../data.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20,),
          const Text("Burger", style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold,fontSize: 30),),
          SizedBox(height: 10,),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => Image.asset(page2_list[index],height: 200,width: double.infinity,fit: BoxFit.cover,),
                separatorBuilder: (context, index) => const SizedBox(height: 10,),
                itemCount: page2_list.length
            ),
          )
        ],
      ),
    );
  }
}
