import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jiitak_inc_ui_task/until/images.dart';

import '../../base/custom_text_filed.dart';
import 'package:dotted_border/dotted_border.dart';

class EditStoredata extends StatefulWidget {
  EditStoredata({super.key});

  @override
  State<EditStoredata> createState() => _EditStoredataState();
}

final TextEditingController? _name = TextEditingController();
final TextEditingController? _storename = TextEditingController();

final FocusNode _addressNode = FocusNode();
final FocusNode _nameNode = FocusNode();

final FocusNode _storenode = FocusNode();
final FocusNode _storeadd_node = FocusNode();

class _EditStoredataState extends State<EditStoredata> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          title: const Text('店舗プロフィール編集', style: TextStyle(fontSize: 18)),
          centerTitle: true,
          leading: IconButton(
            icon: Image.asset(Images.back2),
            color: Theme.of(context).textTheme.bodyText1?.color,
            onPressed: () => Navigator.pop(context),
          ),
          backgroundColor: Theme.of(context).cardColor,
          elevation: 0,
          actions: [
            Stack(
clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: 4,
                  right: 4,
                  child: Container(
                    width: 20,height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red
                 
                 
                    ),
                    child: const Center(child: Text('99+',style: TextStyle(fontSize: 8),)),
                  )
                
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_none_outlined)),
              ],
            )
          ]),
      body: Column(
        children: [
          Expanded(
              child: Scrollbar(
                  child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('店舗名', style: TextStyle(fontSize: 12)
                    
                    ),
                    Text('*',style: TextStyle(color: Colors.red),)
                  ],
                ),
                SizedBox(height: 10),
                MyTextField(
                  hintText: 'Mer キッチン*',
                  focusNode: _nameNode,
                  nextFocus: _storenode,
                  controller: _name,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('代表担当者名', style: TextStyle(fontSize: 12)),
                      Text('**',style: TextStyle(color: Colors.red),)
                  ],
                ),
                SizedBox(height: 10),
                MyTextField(
                  hintText: '林田　絵梨花',
                  focusNode: _storenode,
                  nextFocus: _addressNode,
                  controller: _storename,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('代表担当者名', style: TextStyle(fontSize: 12)),
                      Text('**',style: TextStyle(color: Colors.red),)
                  ],
                ),
                SizedBox(height: 10),
                MyTextField(
                  hintText: '123 - 4567 8910',
                  focusNode: _storeadd_node,
                  nextFocus: _addressNode,
                  controller: _storename,
                ),
                SizedBox(
                  height: 40,
                ),
                MyTextField(
                  hintText: '大分県豊後高田市払田791-13',
                  controller: _storename,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  color: Theme.of(context).disabledColor,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text('店舗外観'),
                    Text('*',style: TextStyle(color: Colors.red),),
                      Text('（1枚〜3枚ずつ追加してくださ)',style: TextStyle(color: Theme.of(context).disabledColor),)
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: SizedBox(
                      height: 100,
                      child: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3, // Number of containers in a row
                              childAspectRatio:
                                  1, // Aspect ratio to maintain equal width and height
                            ),
                            itemCount: 3,
                            shrinkWrap: true,
                            itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: index != 2
                                    ? Container(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                          ),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                               'assets/images/Input.png',
                                                fit: BoxFit.cover,
                                              ),
                                              Positioned(
                                              top: -6,
                                              right: 20,
                                              child: IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(
                                                    Icons.cancel,
                                                    color: Theme.of(context).cardColor,
                                                  )))
                                            ],
                                          ),
                                        ),
                                      )
                                    : Center(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 10),
                                          child: DottedBorder(
                                              borderPadding: EdgeInsets.all(2),
                                              dashPattern: [5],
                                              child: Container(
                                                child: Center(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.center,
                                                    children: [
                                                      Image.asset(Images.noimage),
                                                      Text(
                                                        '写真を追加',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color: Theme.of(
                                                                    context)
                                                                .disabledColor),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              )),
                                        ),
                                      ))),
                      ),
                    )),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text('店舗内観'),
                      Text('*',style: TextStyle(color: Colors.red),),
                      Text('（1枚〜3枚ずつ追加してくださ)',style: TextStyle(color: Theme.of(context).disabledColor),)
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: SizedBox(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount:
                                  3, // Number of containers in a row
                              childAspectRatio:
                                  1, // Aspect ratio to maintain equal width and height
                            ),
                            itemCount: 3,
                            shrinkWrap: true,
                            itemBuilder: (context, index) => Container(
                                 
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 10,
                                    ),
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          'assets/images/Input.png',
                                          fit: BoxFit.cover,
                                        ),
                                        Positioned(
                                            top: -6,
                                            right: 20,
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.cancel,
                                                  color: Theme.of(context).cardColor,
                                                )))
                                      ],
                                    ),
                                  ),
                                )),
                      ),
                    )),
                  ],
                ),
               
                    SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text('店舗内観'),
                      Text('*',style: TextStyle(color: Colors.red),),
                      Text('（1枚〜3枚ずつ追加してくださ)',style: TextStyle(color: Theme.of(context).disabledColor),)
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: SizedBox(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount:
                                  3, // Number of containers in a row
                              childAspectRatio:
                                  1, // Aspect ratio to maintain equal width and height
                            ),
                            itemCount: 3,
                            shrinkWrap: true,
                            itemBuilder: (context, index) => Container(
                                 
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 10,
                                    ),
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          'assets/images/Input.png',
                                          fit: BoxFit.cover,
                                        ),
                                        Positioned(
                                            top: -6,
                                            right: 20,
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.cancel,
                                                  color: Theme.of(context).cardColor,
                                                )))
                                      ],
                                    ),
                                  ),
                                )),
                      ),
                    )),
                  ],
                ),
                SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(child: Container(  
                    
                    height: 50,
                     decoration: BoxDecoration(
                                                              color: Theme.of(
                                                                      context)
                                                                  .cardColor,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                     14),
                                                              border: Border.all(
                                                                  color: Theme.of(
                                                                          context)
                                                                      .disabledColor)),)
                  ),

                  SizedBox(width: 10,),
                    Expanded(child: Container(  
                    
                    height: 50,
                     decoration: BoxDecoration(
                                                              color: Theme.of(
                                                                      context)
                                                                  .cardColor,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                     14),
                                                              border: Border.all(
                                                                  color: Theme.of(
                                                                          context)
                                                                      .disabledColor)),)
                  )
                ],
              )
              ],
            ),
          ))),
        
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  child: ElevatedButton(onPressed: () {
                    
                  }, 
                  
                   style: ElevatedButton.styleFrom(
    primary: Colors.red.withOpacity(.9), // Background color of the button
    onPrimary: Colors.white, // Text color of the button
    elevation: 5, // Elevation of the button
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10), // Rounded corners for the button
    ),
  ),
                  child: Text('来店プレゼント名')),
                ),
              ),
            ),
          ],
        )
        ]
        
        ,
      ),
    );
  }
}
