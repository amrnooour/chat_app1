import 'package:chat_app1/core/theme/app_styles.dart';
import 'package:chat_app1/features/home/presentation/views/widgets/custom_row_status.dart';
import 'package:flutter/material.dart';

class StatusBody extends StatelessWidget {
  const StatusBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            color: Colors.grey,
          ),
          CustomRowStatus(
              title1: "My Status", title2: "Tap to add status update"),
          Padding(
            padding: EdgeInsets.only(left: 20, bottom: 10),
            child: Text(
              "Recent updates",
              style: AppStyles.size18Weight400grey,
            ),
          ),
          CustomRowStatus(
            title1: "Amr Nour",
            title2: "Today 12:00 pm",
            widget: Text(""),
            vertical: 10,
          ),
          CustomRowStatus(
            title1: "Amr Nour",
            title2: "Today 12:00 pm",
            widget: Text(""),
            vertical: 10,
          ),
          CustomRowStatus(
            title1: "Amr Nour",
            title2: "Today 12:00 pm",
            widget: Text(""),
            vertical: 10,
          ),
          CustomRowStatus(
            title1: "Amr Nour",
            title2: "Today 12:00 pm",
            widget: Text(""),
            vertical: 10,
          ),
          Padding(
              padding: EdgeInsets.only(left: 20, top: 20,bottom: 10),
              child: Text(
                "Viewed updates",
                style: AppStyles.size18Weight400grey,
              )),
          CustomRowStatus(
            title1: "Amr Nour",
            title2: "Today 12:00 pm",
            widget: Text(""),
            vertical: 10,
          ),
          CustomRowStatus(
            title1: "Amr Nour",
            title2: "Today 12:00 pm",
            widget: Text(""),
            vertical: 10,
          ),
        ],
      ),
    );
  }
}
