import 'package:flutter/material.dart';

import '../../styles.dart';

class CardTodo extends StatelessWidget {
  const CardTodo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: CustomMargin.mainHorizontal,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // checkbox
          Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(100),
              child: Ink(
                decoration: CustomCheckbox.normal,
                child: Container(
                  width: 20,
                  height: 20,
                ),
              ),
              onTap: () => {},
            ),
          ),
          const SizedBox(width: 20),
          Flexible(
            child: Text(
              'Belajar state management flutter',
              style: CustomText.content,
            ),
          )
        ],
      ),
    );
  }
}
