import 'package:flutter/material.dart';
import 'package:geekreep/core/model/classes/classs_subjects_model.dart';
import 'package:geekreep/interface/global/buttons/standard_button.dart';
import 'package:geekreep/interface/global/text_widgets/semibold_text.dart';
import 'package:geekreep/theme/paddings.dart';
import 'package:go_router/go_router.dart';

class SubjectItem extends StatelessWidget {
  const SubjectItem({
    super.key,
    required this.subject,
    required this.screenHeight,
  });

  final ClassSubject subject;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: Paddings.small,
        horizontal: Paddings.defaultSize,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onBackground,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      height: screenHeight / 5,
      child: Padding(
        padding: const EdgeInsets.all(Paddings.defaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subject.name!,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: subject.color,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SemiBoldStandardText(
              text: 'Prof. ${subject.teacherName!}',
              padding: 0,
              colour: Theme.of(context).colorScheme.onSurface.withOpacity(0.8),
            ),
          ],
        ),
      ),
    );
  }
}
