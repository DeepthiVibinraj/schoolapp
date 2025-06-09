import 'package:get/get.dart';
import 'package:school_admin_app/core/theme/synap/size_utils.dart';
import 'package:school_admin_app/pages/AdminDashboard/models/grid_menu_model.dart';

import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

class GridMenu extends StatelessWidget {
  GridMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: menus.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.4,
          // crossAxisSpacing: defaultPadding,
          // mainAxisSpacing: defaultPadding
        ),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => Get.toNamed(menus[index].route),
          child: Center(
            child: CircleAvatar(
              // decoration: BoxDecoration(
              //     color: colorScheme.onSecondary,
              //     borderRadius: BorderRadius.circular(60)),
              // padding: getPadding(all: defaultPadding / 4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    image: AssetImage(
                      menus[index].image,
                    ),
                    //height: height * 0.1,
                    width: width * 0.1,
                  ),
                  Center(
                    child: Text(
                      menus[index].menuName,
                      style: textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
