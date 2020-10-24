import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height:130,
              color: Colors.red[500],
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text('Howdy, John',style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:23.0 ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:34.8,width:34.8,
                      decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(60.0)),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.notifications_none, color: Colors.red, size: 18.0,),
                    )),
                  )
                ],
              ) ,
            ),
            Container(
              margin:EdgeInsets.fromLTRB(12.0,100.0,12.0,3.0),
              height:180,
              //width:100,
              child:ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:150,
                      width:280,
                      child: Card(
                        elevation:4.0 ,
                shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.all(Radius.circular(20.0)),

                ),
                        child: Column(
                          crossAxisAlignment:CrossAxisAlignment.start ,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left:18.0),
                                  child: Text('John Doe',style: TextStyle(color: Colors.blue[900],fontSize:20.0,fontWeight:FontWeight.bold),),
                                ),
                                Image.network('https://images-na.ssl-images-amazon.com/images/I/31%2BwWySBp9L._SR600%2C315_PIWhiteStrip%2CBottomLeft%2C0%2C35_SCLZZZZZZZ_.jpg',height: 50,width:50,),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:18.0),
                              child: Text('. . . 4578',style: TextStyle(color: Colors.black,fontSize:20.0,fontWeight:FontWeight.bold)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:18.0),
                              child: Text('06/23',style: TextStyle(color: Colors.grey,fontSize:15.0)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left:18.0),
                                  child: Text('VISA',style: TextStyle(color: Colors.blue[900],fontSize:22.0,fontWeight:FontWeight.bold)),
                                ),

    Container(
      height:65,width: 200,
        child: Image.asset('assets/card.png',fit: BoxFit.fill,)),


                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:150,
                      width:280,
                      child: Card(
                          elevation:4.0 ,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),),
                      child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ultricies neque ut venenatis gravida. Vestibulum id quam a sapien laoreet gravida. '),
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:150,
                      width:280,
                      child: Card(
                          elevation:4.0 ,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),),
                      child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ultricies neque ut venenatis gravida. Vestibulum id quam a sapien laoreet gravida. '),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          height:15,
            child:DotsIndicator(
              dotsCount: 3,
              reversed: true,
              position: 2.0,
              decorator: DotsDecorator(
                size: Size.square(8.0),
                activeColor: Colors.grey[900],
                activeSize: Size.square(9.0),
              ),
            )
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15.0,7.0,15.0,6.0),
          child: Container(
            decoration: BoxDecoration(image: DecorationImage( image:AssetImage('assets/bg.png', ),fit: BoxFit.fitWidth,),
            borderRadius: BorderRadius.circular(10.0)),
            height:90,
             child: Center(
               child: Padding(
                 padding: const EdgeInsets.all(7.0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:18.0,top:8.0),
                        child: Text('Payment',style: TextStyle(color:Colors.white,fontSize:19.0,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:18.0),
                        child: Text('Perfection',style: TextStyle(color:Colors.white,fontSize:19.0,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:197.0),
                        child: Image.asset('assets/gorex.png',height:20,width:130,),
                      ),
                    ],
                  ),
               ),
             ),
           ),
        ),
        Padding(
          padding: const EdgeInsets.all(9.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:12.0),
                child: Text('Services',overflow:TextOverflow.ellipsis,style: TextStyle(color: Colors.grey,fontSize:16.0,backgroundColor:Colors.white ),),
              ),
             Icon(Icons.settings,color: Colors.grey,),
            ],
          ),
        ),
        Expanded(
          flex:3,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[

                  Column(
                    children: <Widget>[
                      Container(
                        height:50,
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),

                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.asset('assets/transfer.png'),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Transfer',style: TextStyle(fontWeight: FontWeight.bold,fontSize:12),),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                          height:50,
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.asset('assets/airtime.png'),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Airtime',style: TextStyle(fontWeight: FontWeight.bold,fontSize:12),),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                          height:50,
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.asset('assets/electricity.png'),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Electricity',style: TextStyle(fontWeight: FontWeight.bold,fontSize:12),),
                      ),
                    ],
                  ),
                ],),
              ),

              Padding(
                padding: const EdgeInsets.only(top:3.0,bottom: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                          height:50,
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.asset('assets/cable.png'),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('CableTv',style: TextStyle(fontWeight: FontWeight.bold,fontSize:12),),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                          height:50,
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.asset('assets/internet.png'),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Internet',style: TextStyle(fontWeight: FontWeight.bold,fontSize:12),),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                          height:50,
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.asset('assets/food.png'),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Food',style: TextStyle(fontWeight: FontWeight.bold,fontSize:12),),
                      ),
                    ],
                  ),
                ],),
              ),

          Padding( //just to show the scrollview is working
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.asset('assets/cable.png'),
                    Text('CableTv'),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Image.asset('assets/internet.png'),
                    Text('Internet'),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Image.asset('assets/food.png'),
                    Text('Food'),
                  ],
                ),
              ],),
          ),
            ],),
          ),
        ),
      ],

    );
  }
}


class Transactions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('My transactions'),
      ),
    );
  }
}

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Services'),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(
      child: Text('Profile'),
    ),);
  }
}
