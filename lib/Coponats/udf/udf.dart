import 'package:flutter/material.dart';
Container bar() {
  return Container(
    margin: EdgeInsets.only(top: 35,left:10),
    height: 50,
    width: 360,
    color: Colors.grey.shade100,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [Text('Hi,Graciel Deniliya ',style: TextStyle(color: Colors.black,fontSize:18,fontWeight: FontWeight.w500),),
            Text('Choose your favortie toy'),

          ],
        ),
        Icon(Icons.menu),
      ],
    ),
  );
}

Container serachbar() {
  return Container(
    margin: EdgeInsets.only(top: 10,left:40),
    height: 50,
    width: 300,
    decoration: BoxDecoration
      (
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black,width: 1)
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: 2,),
        Text('Search new toy',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
        Icon(Icons.search),


      ],
    ),
  );
}


Container mainBox({required String name ,required String image ,required int price}) {
  return Container(
    margin: EdgeInsets.only(top:10 ,left: 5),
    height:290,
    width: 170,
    decoration: BoxDecoration(
      color:Colors.grey.shade200,
      borderRadius: BorderRadius.circular(10),

    ),
    child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              Icon(Icons.favorite,color: Colors.red,),
              SizedBox(height:6,width: 4,),],

          ),
          Image.asset(image,height: 200,width: 200,),
          SizedBox(width: 5,),
          Text(name,style: TextStyle(color: Colors.black,fontWeight:FontWeight.w500,fontSize:24),),
          Text(
            '\$ ${price.toString()}',style: TextStyle(fontSize: 18),),



        ],
      ),
    ),


  );
}