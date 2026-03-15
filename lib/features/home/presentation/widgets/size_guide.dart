import 'package:flutter/material.dart';
import 'package:laza/core/theme/colors.dart';

class SizeGuide extends StatelessWidget {

  final String size;

  const SizeGuide({
    super.key, required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.16,
      height: MediaQuery.of(context).size.height * 0.06,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.surfaceDark4,
      ),
      child: Center(
        child: Text(
          size.toUpperCase(),
          style: Theme.of(context).textTheme.bodyMedium!
              .copyWith(
                color: AppColors.dark,
                fontWeight: FontWeight.w500,
                fontSize: 17,
              ),
        ),
      ),
    );
  }
}