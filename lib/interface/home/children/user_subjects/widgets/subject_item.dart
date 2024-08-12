import 'package:flutter/material.dart';
import 'package:geekreep/core/model/classes/classs_subjects_model.dart';
import 'package:geekreep/interface/global/buttons/standard_button.dart';
import 'package:geekreep/interface/global/text_widgets/semibold_text.dart';
import 'package:geekreep/interface/global/text_widgets/standard_text.dart';
import 'package:geekreep/theme/paddings.dart';
import 'package:line_icons/line_icons.dart';

class SubjectItem extends StatelessWidget {
  const SubjectItem({
    super.key,
    required this.subject,
    required this.screenSize,
  });

  final ClassSubject subject;
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    final contentList = subject.contentList;
    final chapterIndex = subject.activeChapterIndex ?? 0;
    final contentListLength = contentList?.length ?? 0;

    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: Paddings.small,
        horizontal: Paddings.defaultSize,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onSurface,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      height: screenSize.height / 4,
      child: Padding(
        padding: const EdgeInsets.all(Paddings.defaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '${subject.name!} -',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: subject.color,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                StandardBodyText(
                  text: contentListLength > 1
                      ? ' $contentListLength Capitulos'
                      : ' 1 Capitulo',
                ),
              ],
            ),
            SemiBoldBodyText(
              text: 'Prof. ${subject.teacherName!}',
              padding: 0,
              colour: Theme.of(context).colorScheme.inverseSurface,
            ),
            const SizedBox(height: Paddings.defaultSize),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  LineIcons.bookmarkAlt,
                  size: 20,
                  color: Theme.of(context)
                      .colorScheme
                      .inverseSurface
                      .withOpacity(0.8),
                ),
                const SizedBox(
                  width: Paddings.small / 2,
                ),
                Flexible(
                  child: StandardBodyText(
                    text: '- ${contentList!.elementAt(chapterIndex).name}',
                    padding: 0,
                    colour: Theme.of(context).colorScheme.inverseSurface,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                const Spacer(),
                StandardButton(
                  bold: false,
                  onTap: () {},
                  text: "Acessar conteudo",
                  backgroundColour: Theme.of(context).colorScheme.onSurface,
                  margin: 0,
                  padding: const EdgeInsets.symmetric(
                    horizontal: Paddings.defaultSize,
                    vertical: Paddings.small,
                  ),
                  border: Border.all(
                    color: subject.color!,
                    width: 1,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
