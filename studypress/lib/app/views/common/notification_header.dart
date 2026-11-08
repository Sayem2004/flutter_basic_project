import "package:flutter/material.dart";

class NotificationHeader extends StatelessWidget {
  const NotificationHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 6, 20, 0),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            borderRadius: BorderRadius.circular(999),
            child: Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 1),
                border: Border.all(
                  color: const Color.fromRGBO(228, 232, 240, 1),
                ),
                borderRadius: BorderRadius.circular(999),
              ),
              child: const Icon(
                Icons.chevron_left,
                size: 20,
                color: Color.fromRGBO(11, 32, 51, 1),
              ),
            ),
          ),

          const Expanded(
            child: SizedBox(),
          ),

          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(999),
            child: Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 1),
                border: Border.all(
                  color: const Color.fromRGBO(228, 232, 240, 1),
                ),
                borderRadius: BorderRadius.circular(999),
              ),
              child: const Icon(
                Icons.settings_outlined,
                size: 20,
                color: Color.fromRGBO(11, 32, 51, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}