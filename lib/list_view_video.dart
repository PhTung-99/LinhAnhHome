import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'all_product.dart';

class ChildImageVideo extends StatefulWidget {
  final int id;
  ChildImageVideo({Key key, this.id}) : super(key: key);

  @override
  _ChildImageStateVideo createState() => _ChildImageStateVideo();
}

class _ChildImageStateVideo extends State<ChildImageVideo> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
      child: Card(
        elevation: 1,
        child: Container(
            height: MediaQuery.of(context).size.height / 2.5,
            width: MediaQuery.of(context).size.width / 1.5,
            color: Colors.white12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      "${productAll[widget.id].image2}",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/image/playbutton.png",
                      height: 40,
                      width: 40,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    "${productAll[widget.id].name2}",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${productAll[widget.id].describe2}",
                        maxLines: 3,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "${productAll[widget.id].day}",
                          maxLines: 3,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
