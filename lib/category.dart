import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'all_product.dart';
import 'category_item.dart';

class Category extends StatefulWidget {
  final int id;
  Category({Key key, this.id}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
      child:   Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(500),
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.grey[300],
                ),
              ),
              Image.asset(
                "${itemCategory[widget.id].image}",
                height: 25,
                width: 25,
              ),
            ],
          ),
          SizedBox(height: 5,),
          Text("${itemCategory[widget.id].name}",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
