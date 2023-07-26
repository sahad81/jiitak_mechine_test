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
  final TextEditingController? _storename =
      TextEditingController();
  final TextEditingController? _storeNumber =
      TextEditingController();
  final TextEditingController _storeAd = TextEditingController();
  final TextEditingController _houseController = TextEditingController();
  final TextEditingController _floorController = TextEditingController();
  final FocusNode _addressNode = FocusNode();
  final FocusNode _nameNode = FocusNode();
  final FocusNode _numberNode = FocusNode();
  final FocusNode _storenode = FocusNode();
  final FocusNode _storeadd_node = FocusNode();
  final FocusNode _floorNode = FocusNode();
class _EditStoredataState extends State<EditStoredata> {
  @override
  Widget build(BuildContext context) {
   Size size=MediaQuery.of(context).size;
    return Scaffold(
appBar: AppBar(
            title: Text('店舗プロフィール編集',
                style:TextStyle(fontSize: 18)),
            centerTitle: true,
            leading: 
                IconButton(
                    icon:Image.asset(Images.back2),
                    color: Theme.of(context).textTheme.bodyText1?.color,
                    onPressed: () =>
                       Navigator.pop(context),
                  ),
               
            backgroundColor: Theme.of(context).cardColor,
            elevation: 0,
            actions: [
                    IconButton(
                      onPressed:() {
                        
                      },
                      icon:Icon(Icons.notifications_active_outlined)
                    )
                  ]
              
          ),
body: Column(
  children: [
    Expanded(child: 
    Scrollbar(child: 
  SingleChildScrollView(
    physics: BouncingScrollPhysics(),
    padding: EdgeInsets.all(9),
    child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          SizedBox(
                                      height: 10),
                                  Text(
                                    '店舗名*',
                                    style: TextStyle(fontSize: 12)
                                  ),
                                  SizedBox(
                                      height: 10),
                                  MyTextField(
                                   
                                    hintText: 'Mer キッチン*',
                                  
                                    focusNode: _nameNode,
                                    nextFocus: _storenode,
                                    controller: _name,
                                    
                                  ),
                                   SizedBox(
                                      height: 10),
                                  Text(
                                    '代表担当者名**',
                                    style: TextStyle(fontSize: 12)
                                  ),
                                  SizedBox(
                                      height: 10),
                                  MyTextField(
                                   
                                    hintText: '林田　絵梨花',
                                  
                                    focusNode: _storenode,
                                    nextFocus: _addressNode,
                                    controller: _storename,
                                    
                                  ),
                                    SizedBox(
                                      height: 10),
                                      Text(
                                    '代表担当者名**',
                                    style: TextStyle(fontSize: 12)
                                  ),
                                  SizedBox(
                                      height: 10),
                                  MyTextField(
                                   
                                    hintText: '123 - 4567 8910',
                                  
                                    focusNode: _storeadd_node,
                                    nextFocus: _addressNode,
                                    controller: _storename,
                                    
                                  ),



                                  SizedBox(height: 40,),
                                        MyTextField(
                                   
                                    hintText: '大分県豊後高田市払田791-13',
                         
                                    controller: _storename,
                                    
                                  ),


                                  SizedBox(height: 20,),
                                  Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 300,
                                  color:Theme.of(context).disabledColor,
                                  ),
                                  SizedBox(height: 15,),
                        Text('店舗外観*（最大3枚まで）') , 
                 Row(
  children: [
    Expanded(
      child: SizedBox(
        height: 100,
        child:GridView.builder(
          physics: NeverScrollableScrollPhysics(),
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3, // Number of containers in a row
    childAspectRatio: 1, // Aspect ratio to maintain equal width and height
  ),
  itemCount: 3,
  shrinkWrap: true,
  itemBuilder: (context, index) => Padding(
    padding: const EdgeInsets.all(8.0),
    child:index!=2? Container(
      
      child: Padding(
       padding: const EdgeInsets.symmetric(vertical: 10,),
        child: Image.asset(Images.demyimage,fit: BoxFit.cover,),
      ),):Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          child: DottedBorder(
            borderPadding: EdgeInsets.all(2),
            dashPattern: [5],
            child: Container(
child: Center(child: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.center,

  children: [
        Image.asset(Images.noimage),
  Text('写真を追加',style: TextStyle(fontSize: 12,color: Theme.of(context).disabledColor),)
  ],
),
),

            )),
        ),
      )
    )
  ),
)
      ),
   
  ],
)  ,   
          SizedBox(height: 15,),
                        Text('店舗内観*（1枚〜3枚ずつ追加してくださ）') , 
                 Row(
  children: [
    Expanded(
      child: SizedBox(
        height: 100,
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Number of containers in a row
            childAspectRatio: 1, // Aspect ratio to maintain equal width and height
          ),
          itemCount: 3,
          shrinkWrap: true,
          itemBuilder: (context, index) => Container(
            color: Colors.black,
            child: Padding(
             padding: const EdgeInsets.symmetric(vertical: 10,),
          child: Stack(
          children: [
            Image.asset('assets/images/Input.png',fit: BoxFit.cover,),
            Positioned(
              top: 0,right: 0,
              child: IconButton(onPressed: (){}, icon: Icon(Icons.abc, color: Colors.blue,)))
          ],
          ),
            ),)
          ),
        ),
)
      ),
   
  ],
)       ,
 SizedBox(height: 30,)
      ],
    ),
  )
    )
    )
  ],
),
    )
    
    ;
  }
}