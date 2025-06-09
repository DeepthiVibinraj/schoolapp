import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_admin_app/pages/SideMenu/side_menu_drawer.dart';
import 'package:school_admin_app/pages/TimeTable/screens/timetable_add_screen.dart';
import 'package:school_admin_app/utils/app_routes.dart';
import '../controllers/timetable_controller.dart';

class TimeTableListScreen extends StatelessWidget {
  final TimeTableController timeTableController =
      Get.put(TimeTableController());

  @override
  Widget build(BuildContext context) {
    timeTableController.fetchTimeTables();

    return Scaffold(
      appBar: AppBar(title: Text('TimeTable List')),
      drawer: SideMenuDrawer(),
      body: Obx(() {
        if (timeTableController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          itemCount: timeTableController.timeTables.length,
          itemBuilder: (context, index) {
            final timetable = timeTableController.timeTables[index];

            return ListTile(
              title: Text(timetable.className),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      Get.to(() => AddTimeTableScreen(timeTable: timetable));
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      timeTableController.deleteTimeTable(timetable.id);
                    },
                  ),
                ],
              ),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.toNamed(AppRoutes.timetable_add_screen);
      }),
    );
  }
}
