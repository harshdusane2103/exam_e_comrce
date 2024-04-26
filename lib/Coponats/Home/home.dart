import 'package:exam_e_comrce/utils/list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../udf/udf.dart';
class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                bar(),
              ],
            ),
            Row(
              children: [

                serachbar()
              ],
            ),
            Container(
              margin: EdgeInsets.only(top:10),
              height: 200,
              width: 360,
             decoration: BoxDecoration(
               color: Colors.grey,
               borderRadius: BorderRadius.circular(15),
               image: DecorationImage(
                 fit: BoxFit.cover,
                 image: AssetImage('asstes/images/banner.jpeg'),
               )
             ),
            ),
            Wrap(
              children: [
                ...List.generate(productlist.length, (index) => InkWell(
                  onTap: () {
                    selectindex=index;
                    Navigator.of(context).pushNamed('/det');
                  },
                    child: mainBox(image: productlist[index]['image'],name: productlist[index]['name'],price: productlist[index]['price'],)))
              ],
            )




          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 50,
        color: Colors.white,
        child: Row
          (
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.home_filled,color: Colors.red,),
            Icon(Icons.account_circle_outlined,color: Colors.black,),
            Icon(Icons.shopping_cart,color: Colors.black,),
            Icon(Icons.comment,color: Colors.black,),
          ],
        ),
      ),
    );
  }





}
