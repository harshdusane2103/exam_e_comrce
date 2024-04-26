import 'package:exam_e_comrce/utils/list.dart';
import 'package:flutter/material.dart';
class detailScreen extends StatefulWidget {
  const detailScreen({super.key});

  @override
  State<detailScreen> createState() => _detailScreenState();
}

class _detailScreenState extends State<detailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop('/home');
          },
            child: Icon(Icons.arrow_back)),


      ),
      body: Column
        (
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // margin: EdgeInsets.only(top:40,),
              height: 300,
              width:360,
              // color: Colors.red,
              decoration: BoxDecoration(
                image: DecorationImage(
                  // fit: BoxFit.cover,
                    image:AssetImage(productlist[selectindex]['image']) )
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5),
            height: 400,
            width: 360,
            color: Colors.grey.shade100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                
                   Text(productlist[selectindex]['name'],style: TextStyle(color: Colors.black,fontSize: 24),),
                   Icon(Icons.favorite,color: Colors.red,),

                 ],
               ),
                Text(
                   '\$ ${productlist[selectindex]['price'].toString()}',style: TextStyle(color: Colors.red,fontSize: 22),),
                Text('4.5 ⭐',style: TextStyle(color: Colors.green,fontSize: 18),),
                Text(productlist[selectindex]['decripsion'],style: TextStyle(color: Colors.black54,fontSize:15,letterSpacing:0.5),),
                InkWell(
                  onTap: () {
                    cartlist.add(selectindex);
                    // bool status=false;s
                    // int index=0;
                    // for(int i=0;i<cartlist.length;i++)
                    //   {
                    //     if(productlist[index]['name']==cartlist[selectindex]['name'])
                    //       {
                    //         status=true;
                    //         index=i;
                    //       }
                    //   }
                    //   if(status)
                    //     {
                    //       cartlist[selectindex]['quantity']++;
                    //     }
                    //   else
                    //     {
                    //       cartlist.add(selectindex);
                    //     }
                      Navigator.of(context).pushNamed('/cart');
                   },
                  child: Container(
                    margin: EdgeInsets.only(left: 20,top: 10),
                    height: 80,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.red.shade500,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 50,),
                        Text('Add To Cart',style:TextStyle(color: Colors.white,fontSize: 24),),
                        SizedBox(width: 30,),
                        Icon(Icons.shopping_bag_outlined,color: Colors.white,size: 24,)

                      ],

                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
