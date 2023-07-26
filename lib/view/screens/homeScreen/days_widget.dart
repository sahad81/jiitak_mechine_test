import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../controlls/home_controller.dart';

class DaysWidget extends StatelessWidget {
  const DaysWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Homecontroller>(builder: (controller) {
                          return ListView.builder(
    physics: BouncingScrollPhysics(),
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            controller.selectedCard(index);
          },
          child: Container(
            width: MediaQuery.of(context).size.width *
                0.14,
            height: MediaQuery.of(context).size.height *
                0.2,
            decoration: BoxDecoration(
              color: controller.currentIndex == index
                  ? Color(0xFFFAAA14)
                  : Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300]!,
                  blurRadius: 5,
                  spreadRadius: 1,
                )
              ],
            ),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.center,
              mainAxisAlignment:
                  MainAxisAlignment.center,
              children: [
                Text(
                  '木',
                  style: TextStyle(
                      color: controller.currentIndex ==
                              index
                          ? Theme.of(context).cardColor
                          : Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .color,
                      fontSize: 20),
                ),
                Text(
                  '23',
                  style: TextStyle(
                      color: controller.currentIndex ==
                              index
                          ? Theme.of(context).cardColor
                          : Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .color,
                      fontSize: 20),
                )
              ],
            ),
          ),
        ),
      );
    },
    itemCount: 10,
                          );
                        });
  }
}