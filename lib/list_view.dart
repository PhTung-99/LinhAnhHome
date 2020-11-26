import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_pham/all_product.dart';

class ChildImage extends StatefulWidget {
  final int id;
  ChildImage({Key key, this.id}) : super(key: key);

  @override
  _ChildImageState createState() => _ChildImageState();
}

class _ChildImageState extends State<ChildImage> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
      child: Card(
        elevation: 1,
        child:  Container(
          height: MediaQuery.of(context).size.height/2.5,
          width: MediaQuery.of(context).size.width/2.5,
          color: Colors.white12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Image.asset(
                  "${productAll[widget.id].image}",
                  fit: BoxFit.cover,
                ),
                  Container(
                    margin: EdgeInsets.only(right: 5, top: 5),
                    child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(500),
                        child: Container(
                          height: 25,
                          width: 25,
                          color: Colors.white12,
                        ),
                      ),
                      Image.asset(
                        "assets/image/heart.png",
                        height: 15,
                        width: 15,
                      ),
                    ],
                  ),),

                ],
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                  child:   Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${productAll[widget.id].price}",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),),
                  SizedBox(height: 20,),
                  Text("${productAll[widget.id].price}",
                    style: TextStyle(
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),),
                ],
              ),),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),

                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("${productAll[widget.id].name}",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                    ),),
                    Text("${productAll[widget.id].describe}"),],
                ),),


            ],
          )
      ),),
    );
  }
}






