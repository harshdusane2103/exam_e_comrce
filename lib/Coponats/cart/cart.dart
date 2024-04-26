import 'package:exam_e_comrce/utils/list.dart';
import 'package:flutter/material.dart';
class cartScreen extends StatefulWidget {
  const cartScreen({super.key});

  @override
  State<cartScreen> createState() => _cartScreenState();
}

class _cartScreenState extends State<cartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop('/home');
          },
            child: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text('My Cart'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
             ... List.generate(cartlist.length, (index) =>
                Container(
              margin: EdgeInsets.only(left: 10),
              height: 200,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image:DecorationImage(
                        image:AssetImage(productlist[index]['image'])
                      )
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height: 60,width: 20,),
                      Text(productlist[index]['name'],style:TextStyle(fontSize: 24),),
                      Text('\$ ${productlist[index]['price'].toString()}',style:TextStyle(fontSize: 20,color: Colors.red),),
                    ],
                  ),

                  InkWell(
                    onTap: () {
                     setState(() {
                       cartlist.removeAt(index);
                     });
                    },
                      child: Icon(Icons.delete))
                  
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
int index=0;