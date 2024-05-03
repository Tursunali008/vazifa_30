
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  final String name;
  final IconData icon;
  final String text;
  const AboutMe({super.key, required this.name, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xffFFFFFF)),
        child: ExpansionTile(
          trailing: const Icon(
            CupertinoIcons.add_circled_solid,
            color: Color.fromARGB(255, 190, 178, 238),
          ),
          title: Row(
            children: [
              Icon(icon),
              Text(name),
            ],
          ),
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text),
              ],
            ),
            const SizedBox(
              height: 22,
              width: 22,
            ),
          ],
        ),
      ),
    );
  }
}
