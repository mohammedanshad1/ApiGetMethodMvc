

import 'package:apigetxusingmvc/apiGetx/productview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'controller.dart';




void main(){
  runApp(MaterialApp(home: Homepage(),));
}
class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);

  final ctrl = Get.put(Newcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MERCHANT NAMES"),),
      body: Obx(() {
        return

             Container(
          child: GridView.builder(
            itemCount: ctrl.newmodels.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
            ),
            itemBuilder: (context, index) {
              var data = ctrl.newmodels.value[index];
              var products = data.products;

              return Card(
                child: GestureDetector(
                  onTap: () {
                    if ( products!= null) {

                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Products( products: products!,)));
                    } else {
                      // Handle null variants
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Column(
                          children: [
                            Text(data.id.toString() ??""),
                            Text(

                              data.date.toString() ?? "",

                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                    Text(data.userId.toString() ??""),


                          ],
                        )),
                  ),
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
