import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak_inc_ui_task/controlls/home_controller.dart';
import 'package:jiitak_inc_ui_task/helper/route_helper.dart';
import 'package:jiitak_inc_ui_task/until/images.dart';
import 'package:jiitak_inc_ui_task/view/base/custom_text_filed.dart';
import 'package:akar_icons_flutter/akar_icons_flutter.dart';
import 'package:jiitak_inc_ui_task/view/screens/demyScreens/searchresult.dart';

import 'days_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
       //   resizeToAvoidBottomInset: false,
        // floatingActionButton: FloatingActionButton(
        //   elevation: 4,
        //   backgroundColor: Theme.of(context).cardColor,
        //   onPressed: () {},
        //   child:  Icon(CupertinoIcons.location_solid),
        //   shape: const CircleBorder(),
        // ),
        body: Scaffold(
          body: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverAppBar(
                  pinned: true,
                  floating: true,
                  elevation: 0,
                  automaticallyImplyLeading: false,
                  title: InkWell(
                    onTap: () {
                      Get.to(Result());
                    },
                    child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Theme.of(context).disabledColor.withOpacity(0.02)
                        ),
                        width: MediaQuery.of(context).size.width * 0.65,
                        child:Align(
                          alignment: Alignment.centerLeft,
                          child: Text('  北海道, 札幌市',style: TextStyle(color:Theme.of(context).disabledColor ),)),
                        ),
                  ),
                  actions: [
                    SizedBox(width: 3),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                          onPressed: () {
Get.toNamed(RouteHelper.editpage);

                          },
                          icon: const Icon(AkarIcons.settings_vertical,
                              color: Colors.grey)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.heart,
                            weight: 5,
                            color: Colors.red,
                          )),
                    ),
                  ],
                ),
                SliverPersistentHeader(
                    delegate: SliverDelegate(
                        child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xFFFAAA14),
                  child: Center(
                    child: Text('2022年 5月 26日（木）'),
                  ),
                ))),
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 14,
                      ),
                      Container(
                        height:110,
                        child: DaysWidget(),
                      ),
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 20),
                              child: InkWell(
                                onTap: () {
                                  Get.toNamed(RouteHelper.getsetup());
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      )),
                                  child: Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                              decoration: const BoxDecoration(
                                                  borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20.0),
                                                topRight: Radius.circular(20.0),
                                              )),
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              child: Image.asset(
                                                Images.demyimage,
                                                fit: BoxFit.cover,
                                              )),
                                          Positioned(
                                              bottom: 11,
                                              left: 0,
                                              child: index == 0
                                                  ? Container(
                                                      height: 29,
                                                      decoration: BoxDecoration(
                                                        color: Colors.red,
                                                      ),
                                                      child: const Center(
                                                          child: Padding(
                                                        padding:
                                                            EdgeInsets.symmetric(
                                                                horizontal: 20),
                                                        child: Text(
                                                          '本日まで',
                                                          style: TextStyle(
                                                              fontSize: 13),
                                                        ),
                                                      )),
                                                    )
                                                  : const SizedBox())
                                        ],
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(15),
                                        child: Stack(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                    '介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）',
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.4,
                                                      height: 30,
                                                      decoration: BoxDecoration(
                                                          color: Colors.yellow
                                                              .withOpacity(0.2)),
                                                      child: Center(
                                                        child: Text(
                                                          '介護付き有料老人ホーム',
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              color: Color(
                                                                  0xFFFAAA14)),
                                                        ),
                                                      ),
                                                    ),
                                                    Text('¥ 6,000',
                                                        maxLines: 1,
                                                        overflow: TextOverflow
                                                            .ellipsis),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text('5月 31日（水）08 : 00 ~ 17 : 00',
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text('北海道札幌市東雲町3丁目916番地17号',
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text('交通費 300円',
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text('北海道札幌市東雲町3丁目916番地17号',
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis),
                                              ],
                                            ),
                                            Positioned(
                                              bottom: -5,
                                              right: 0,
                                              child: IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(
                                                    CupertinoIcons.heart,
                                                    weight: 500,
                                                    color: Theme.of(context)
                                                        .disabledColor,
                                                    size: 25,
                                                  )),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        itemCount: 10,
                      )
                    ],
                  ),
                )
              ]),
        ));
  }
}

class SliverDelegate extends SliverPersistentHeaderDelegate {
  Widget child;

  SliverDelegate({required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(SliverDelegate oldDelegate) {
    return oldDelegate.maxExtent != 50 ||
        oldDelegate.minExtent != 50 ||
        child != oldDelegate.child;
  }
}
