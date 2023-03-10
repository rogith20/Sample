import 'package:flutter/material.dart';
import 'package:todo_responsive/widgets/custom_text.dart';
import 'circle_checkbox.dart';

class TaskBlock extends StatelessWidget {
  const TaskBlock({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(15),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              blurRadius: 6.0,
              offset: Offset(0, 0),
              color: Colors.black26,
            )
          ]),
      child: Row(
        children: [
          const CircleCheckBox(
            value: false,
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CustomText(
                text: 'hello',
                textType: TextType.title,
              ),
              CustomText(
                text: 'No description',
                textType: TextType.smallest,
              ),
              CustomText(
                text: '06/07/2022 04:40',
                textType: TextType.paragraph,
                iprefText: true,
              ),
            ],
          ),
          const Spacer(),
          Container(
            margin: const EdgeInsets.only(right: 10),
            height: 30,
            width: 90,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.red,
            ),
            child: const Center(
              child: CustomText(
                text: "High",
                textColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
