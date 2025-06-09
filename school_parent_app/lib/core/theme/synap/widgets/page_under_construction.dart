import 'package:school_parent_app/core/theme/synap/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:school_parent_app/pages/SideMenu/side_menu_drawer.dart';

class PageUnderConstruction extends StatelessWidget {
  const PageUnderConstruction({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(),
      drawer: SideMenuDrawer(),
      body: Column(
        children: [
          SizedBox(
            height: height * 0.2,
          ),
          Center(
            child: Text(
              'Page Under Construction',
              style: textTheme.headlineSmall,
            ),
          ),
          SizedBox(
            height: height * 0.2,
          ),
        ],
      ),
    );
  }
}
