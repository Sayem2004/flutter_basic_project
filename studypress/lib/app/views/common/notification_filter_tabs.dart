import "package:flutter/material.dart";

class NotificationFilterTabs extends StatefulWidget {
  final List<String> tabs;

  const NotificationFilterTabs({
    super.key,
    required this.tabs,
  });

  @override
  State<NotificationFilterTabs> createState() =>
      _NotificationFilterTabsState();
}

class _NotificationFilterTabsState extends State<NotificationFilterTabs> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: widget.tabs.length,
        padding: const EdgeInsets.only(right: 20),
        separatorBuilder: (context, index) {
          return const SizedBox(width: 8);
        },
        itemBuilder: (context, index) {
          Color backgroundColor = const Color.fromRGBO(255, 255, 255, 1);
          Color borderColor = const Color.fromRGBO(228, 232, 240, 1);
          Color textColor = const Color.fromRGBO(71, 85, 105, 1);

          if (selectedIndex == index) {
            backgroundColor = const Color.fromRGBO(11, 32, 51, 1);
            borderColor = const Color.fromRGBO(11, 32, 51, 1);
            textColor = const Color.fromRGBO(255, 255, 255, 1);
          }

          return InkWell(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            borderRadius: BorderRadius.circular(999),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: backgroundColor,
                border: Border.all(color: borderColor),
                borderRadius: BorderRadius.circular(999),
              ),
              child: Text(
                widget.tabs[index],
                style: TextStyle(
                  fontSize: 12.5,
                  fontWeight: FontWeight.w700,
                  color: textColor,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}