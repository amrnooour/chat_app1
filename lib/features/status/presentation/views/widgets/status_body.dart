import 'package:chat_app1/core/theme/app_styles.dart';
import 'package:chat_app1/features/status/presentation/views/widgets/custom_row_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatusBody extends StatelessWidget {
  const StatusBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            color: Colors.grey,
          ),
          const CustomRowStatus(
              title1: "My Status", title2: "Tap to add status update"),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 10),
            child: Text(
              "Recent updates",
              style: AppStyles.size18Weight400grey,
            ),
          ),
          CustomRowStatus(
            title1: "Amr Nour",
            title2: "Today 12:00 pm",
            widget: const Text(""),
            vertical: 10.h,
          ),
          CustomRowStatus(
            title1: "Amr Nour",
            title2: "Today 12:00 pm",
            widget: const Text(""),
            vertical: 10.h,
          ),
          CustomRowStatus(
            title1: "Amr Nour",
            title2: "Today 12:00 pm",
            widget: const Text(""),
            vertical: 10.h,
          ),
          CustomRowStatus(
            title1: "Amr Nour",
            title2: "Today 12:00 pm",
            widget: const Text(""),
            vertical: 10.h,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 20, top: 20,bottom: 10),
              child: Text(
                "Viewed updates",
                style: AppStyles.size18Weight400grey,
              )),
          CustomRowStatus(
            title1: "Amr Nour",
            title2: "Today 12:00 pm",
            widget: const Text(""),
            vertical: 10.h,
          ),
          CustomRowStatus(
            title1: "Amr Nour",
            title2: "Today 12:00 pm",
            widget: const Text(""),
            vertical: 10.h,
          ),
        ],
      ),
    );
  }
}
