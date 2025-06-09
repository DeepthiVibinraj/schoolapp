import 'package:school_parent_app/core/theme/synap/size_utils.dart';
import 'package:flutter/material.dart';

class DesktopHeader extends StatelessWidget {
  const DesktopHeader({
    super.key,
    required this.colorScheme,
  });

  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorScheme.onSurface,
      height: height * 0.08,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(
            Icons.settings,
            color: colorScheme.surface,
            size: 25,
          ),
          SizedBox(
            width: width * 0.01,
          ),
          Icon(
            Icons.notifications,
            color: colorScheme.surface,
            size: 25,
          ),
          SizedBox(
            width: width * 0.01,
          ),
          CircleAvatar(
            backgroundColor: colorScheme.surface,
            radius: 18,
            child: Icon(
              Icons.person,
              color: colorScheme.onSurface,
              size: 25,
            ),
          ),
          PopupMenuButton(
            icon: Icon(
              Icons.arrow_drop_down,
              color: colorScheme.surface,
            ),
            iconSize: 25,
            itemBuilder: (context) => [
              const PopupMenuItem(
                child: Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Edit Profile")
                  ],
                ),
              ),
              const PopupMenuItem(
                child: Row(
                  children: [
                    Icon(Icons.logout),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Logout")
                  ],
                ),
              ),
            ],
            offset: const Offset(0, 50),
            color: colorScheme.surface,
            elevation: 2,
          ),
        ],
      ),
    );
  }
}
