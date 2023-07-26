import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:jiitak_inc_ui_task/until/images.dart';
import 'package:icofont_flutter/icofont_flutter.dart';

class SetupScreen extends StatelessWidget {
  const SetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xFFA8B1FF),
            pinned: true,
            floating: true,
            elevation: 0,
            automaticallyImplyLeading: false,
            leading: IconButton(
                onPressed: () {
                Navigator.pop(context);
                },
                icon: Image.asset(
                  Images.backbtn,
                  width: 30,
                )),
            centerTitle: true,
            title: Text(
              'スタンプカード詳細',
              style:
                  TextStyle(fontSize: 20, color: Theme.of(context).cardColor),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Theme.of(context).cardColor, width: 2)),
                    child: Padding(
                      padding: const EdgeInsets.all(7),
                      child: Container(
                        width: 12,
                        height: 2,
                        color: Theme.of(context).cardColor,
                      ),
                    ),
                  ))
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Color(0xFFA8B1FF),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Mer キッチン'),
                        Container(
                          child: Row(
                            children: [
                              Text('現在の獲得数'),
                              Text(
                                '30',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 24),
                              ),
                              Text('個'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.3,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, top: 30, bottom: 10),
                                  child: Container(
  decoration: BoxDecoration(
    color: Theme.of(context).cardColor,
    borderRadius: BorderRadius.all(Radius.circular(20)),
    boxShadow: [
      BoxShadow(
        color: Colors.grey[300]!,
        blurRadius: 5,
        spreadRadius: 1,
      )
    ],
  ),
  width:MediaQuery.of(context).size.width*0.9,
  height:MediaQuery.of(context).size.width*0.5,
  child: GridView.builder(
    scrollDirection: Axis.horizontal,
    physics: NeverScrollableScrollPhysics(),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
                                        mainAxisSpacing:
                                         MediaQuery.of(context).size.width *
                                                0.023,
                                        crossAxisSpacing:
                                            MediaQuery.of(context).size.width *
                                                0.04,
                                      ),
    itemBuilder: (context, index) => FractionallySizedBox(
      widthFactor:0.8, // Make the image widget occupy the entire available width
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Image.asset(
          Images.star,
          fit: BoxFit.fill, // Adjust the fit as needed
        ),
      ),
    ),
    itemCount: 15,
  ),
)

                                );
                              },
                            ),
                          ),
                          Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              
                              Text('2 / 2枚目  ')],
                        
                          ),
                        Text('スタンプ獲得履歴'),

                        ListView.separated(
                          itemCount: 10,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                          return Container(
child: Column(
 crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('2021 / 11 / 18',style: TextStyle(color:  Theme.of(context).disabledColor),),
     Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text('スタンプを獲得しました。'),
      SizedBox(height: 5,),
      Text('1 個')
    ],)
  ],
),
                          );
                        },
                        separatorBuilder: (context, index) => Divider(),
                        )
                        ]
                        
                        ,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
