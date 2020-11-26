import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:my_pham/category_item.dart';
import 'package:my_pham/list_view_video.dart';

import 'all_product.dart';
import 'category.dart';
import 'list_view.dart';
import 'list_view_tinTUc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  //AppBar
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.13,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Positioned.fill(
                  left: 20,
                  top: 30,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 7,
                        child: Container(
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Image.asset(
                                  'assets/image/menumedium.png',
                                  height: 25,
                                  width: 25,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),

                              //Menu Icon
                              // SizedBox(width: 14,),
                              Expanded(
                                flex: 8,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: Container(
                                      color: Colors.white,
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      height: 40,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            'tìm kiếm',
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )),
                              ),
                              //tensanpham
                            ],
                          ),
                        ),
                      ),
                      // SizedBox(width: 30,),
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                'assets/image/bellMedium.png',
                                height: 30,
                                width: 30,
                              ),
                              Image.asset(
                                'assets/image/cartmedium.png',
                                height: 30,
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),// Appbar
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey,
          ),
          Expanded(
            child:  SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 150,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return new Image.asset(
                        "assets/image/banner.jpg",
                        fit: BoxFit.fill,
                      );
                    },
                    autoplay: true,
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    // control: new SwiperControl(),
                  ),
                ),//banner
                SizedBox(
                  height: 20,
                ),
                // Container(
                //   margin: EdgeInsets.symmetric(horizontal: 40),
                //   child: Column(
                //     children: [
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           Column(
                //             children: [
                //               Stack(
                //                 alignment: Alignment.center,
                //                 children: [
                //                   ClipRRect(
                //                     borderRadius: BorderRadius.circular(500),
                //                     child: Container(
                //                       height: 50,
                //                       width: 50,
                //                       color: Colors.grey[300],
                //                     ),
                //                   ),
                //                   Image.asset(
                //                     'assets/image/mypham.png',
                //                     height: 25,
                //                     width: 25,
                //                   ),
                //                 ],
                //               ),
                //               Text('Mỹ Phẩm'),
                //             ],
                //           ),
                //           Column(
                //             children: [
                //               Stack(
                //                 alignment: Alignment.center,
                //                 children: [
                //                   ClipRRect(
                //                     borderRadius: BorderRadius.circular(500),
                //                     child: Container(
                //                       height: 50,
                //                       width: 50,
                //                       color: Colors.grey[300],
                //                     ),
                //                   ),
                //                   Image.asset(
                //                     'assets/image/salontoc.png',
                //                     height: 25,
                //                     width: 25,
                //                   ),
                //                 ],
                //               ),
                //               Text('Salon tóc'),
                //             ],
                //           ),
                //           Column(
                //             children: [
                //               Stack(
                //                 alignment: Alignment.center,
                //                 children: [
                //                   ClipRRect(
                //                     borderRadius: BorderRadius.circular(500),
                //                     child: Container(
                //                       height: 50,
                //                       width: 50,
                //                       color: Colors.grey[300],
                //                     ),
                //                   ),
                //                   Image.asset(
                //                     'assets/image/spa.png',
                //                     height: 25,
                //                     width: 25,
                //                   ),
                //                 ],
                //               ),
                //               Text('Spa'),
                //             ],
                //           ),
                //         ],
                //       ),
                //       SizedBox(
                //         height: 20,
                //       ),
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           Column(
                //             children: [
                //               Stack(
                //                 alignment: Alignment.center,
                //                 children: [
                //                   ClipRRect(
                //                     borderRadius: BorderRadius.circular(500),
                //                     child: Container(
                //                       height: 50,
                //                       width: 50,
                //                       color: Colors.grey[300],
                //                     ),
                //                   ),
                //                   Image.asset(
                //                     'assets/image/nail.png',
                //                     height: 25,
                //                     width: 25,
                //                   ),
                //                 ],
                //               ),
                //               Text('Mi & Móng'),
                //             ],
                //           ),
                //           Column(
                //             children: [
                //               Stack(
                //                 alignment: Alignment.center,
                //                 children: [
                //                   ClipRRect(
                //                     borderRadius: BorderRadius.circular(500),
                //                     child: Container(
                //                       height: 50,
                //                       width: 50,
                //                       color: Colors.grey[300],
                //                     ),
                //                   ),
                //                   Image.asset(
                //                     'assets/image/thathu.png',
                //                     height: 25,
                //                     width: 25,
                //                   ),
                //                 ],
                //               ),
                //               Text('Xăm thẩm mỹ\n TaToo',
                //               textAlign: TextAlign.center,),
                //             ],
                //           ),
                //           Column(
                //             children: [
                //               Stack(
                //                 alignment: Alignment.center,
                //                 children: [
                //                   ClipRRect(
                //                     borderRadius: BorderRadius.circular(500),
                //                     child: Container(
                //                       height: 50,
                //                       width: 50,
                //                       color: Colors.grey[300],
                //                     ),
                //                   ),
                //                   Image.asset(
                //                     'assets/image/hoapham.png',
                //                     height: 25,
                //                     width: 25,
                //                   ),
                //                 ],
                //               ),
                //               Text('Spa'),
                //             ],
                //           ),
                //         ],
                //       ),
                //       SizedBox(
                //         height: 10,
                //       ),
                //
                //     ],
                //   ),
                // ), //gridview
               Container(

                  child: GridView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.only(top: 10, left: 5, right: 5),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Category(
                            id: index,
                          ),
                        );
                      },
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: itemCategory.length),
                ),

                SizedBox(height: 15,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'SẢN PHẨM ĐƯỢC YÊU THÍCH',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),),
                      Text(
                        'Xem tất cả',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 220,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: productAll.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: ChildImage(
                          id: index,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'SẢN PHẨM MỚI NHẤT',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),),
                      Text(
                        'Xem tất cả',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: productAll.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: ChildImage(
                          id: index,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 15,),
                Container(

                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'TIN TỨC',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),),
                      Text(
                        'Xem tất cả',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 270,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: productAll.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: ChildImageTinTuc(
                          id: index,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'VIDEO',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),),
                      Text(
                        'Xem tất cả',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 270,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: productAll.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: ChildImageVideo(
                          id: index,
                        ),
                      );
                    },
                  ),
                ),




              ],
            ),
          ),)



        ],
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
