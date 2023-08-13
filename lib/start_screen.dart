import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,  {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // question mark image
            Image.asset(
              'assets/images/question_mark.png',
              width: 240,
            ),

            const SizedBox(height: 24),
            // learn flutter the fun way!
            Text(
              'QUIZ GA TIPU\-TIP\U!',
              style: TextStyle(
                color: Colors.blue[700],
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 24),

            //button start now
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: startQuiz,
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      padding: const EdgeInsets.symmetric(
                        vertical: 16.0,
                        horizontal: 24.0,
                      ),
                    ),
                    icon: const Icon(Icons.star),
                    label: const Text(
                      'Start Quiz',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
