import 'package:store/consts/consts.dart';

Widget ourButton({
  required VoidCallback onPress,
  required Color color,
  required Color textColor,
  required String title,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: const EdgeInsets.all(16),
    ),
    onPressed: onPress,
    child: title.text.color(textColor).fontFamily(bold).make(), // Ensure `title` uses VelocityX's `text`
  );
}
