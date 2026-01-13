import 'package:flutter/material.dart';
import 'package:jiji_project/theme/app_colors.dart';

class BulletPoints extends StatelessWidget {
  const BulletPoints({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(
            "• ",
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(color: AppColors.textBody),
          ),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}
