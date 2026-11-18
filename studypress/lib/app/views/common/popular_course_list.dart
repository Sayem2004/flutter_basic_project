
import "package:flutter/material.dart";
import "common-whit-card.dart";
import "boldText.dart";
import "lightText.dart";
import '../course_2.dart';

class PopularCourseList extends StatelessWidget {
  const PopularCourseList({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonWhitCard(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 4,
      ),
      child: Column(
        children: [
          PopularCourseItem(
            image: "assets/images/84332567-fb1f-4848-8591-f54f5edb5eb5.webp",
            title: "English Foundation Course",
            badge: "RECORDED",
            description: "Nusrat Jahan · recorded",
            price: "৳1,299",
            badgeColor: const Color.fromRGBO(243, 245, 249, 1),
            badgeTextColor: const Color.fromRGBO(71, 85, 105, 1),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => const Course2(),
              ));
            },
          ),

          const Divider(
            height: 1,
            color: Color.fromRGBO(238, 240, 245, 1),
          ),

          PopularCourseItem(
            image: "assets/images/today.png",
            title: "Math Masterclass",
            badge: "LIVE",
            description: "Tanmoy Das · live batch",
            price: "৳1,899",
            badgeColor: const Color.fromRGBO(253, 240, 238, 1),
            badgeTextColor: const Color.fromRGBO(150, 48, 38, 1),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => const Course2(),
              ));
            },
          ),

          const Divider(
            height: 1,
            color: Color.fromRGBO(238, 240, 245, 1),
          ),

          PopularCourseItem(
            image: "assets/images/1f6a506b-ffc3-4e58-a56a-58d37fc63f53.webp",
            title: "Current Affairs Special",
            badge: "INCLUDED",
            description: "Editorial desk · included in Premium",
            price: "Premium",
            badgeColor: const Color.fromRGBO(252, 245, 228, 1),
            badgeTextColor: const Color.fromRGBO(138, 96, 0, 1),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => const Course2(),
              ));
            },
          ),
        ],
      ),
    );
  }
}

// Popular Course Item
class PopularCourseItem extends StatelessWidget {
  final String image;
  final String title;
  final String badge;
  final String description;
  final String price;
  final Color badgeColor;
  final Color badgeTextColor;
  final VoidCallback onTap;

  const PopularCourseItem({
    super.key,
    required this.image,
    required this.title,
    required this.badge,
    required this.description,
    required this.price,
    required this.badgeColor,
    required this.badgeTextColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                width: 52,
                height: 52,
                color: const Color.fromRGBO(238, 240, 245, 1),
                child: Image.asset(
                  image,
                  width: 52,
                  height: 52,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(width: 13),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    spacing: 7,
                    runSpacing: 5,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      CommonBoldText(
                        title: title,
                        fontSize: 13.5,
                        height: 1.2,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.2,
                      ),

                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 9,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: badgeColor,
                          borderRadius: BorderRadius.circular(999),
                        ),
                        child: Text(
                          badge,
                          style: TextStyle(
                            fontSize: 10,
                            height: 1,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.6,
                            color: badgeTextColor,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 5),

                  CommonLightText(
                    title: description,
                    fontSize: 11.5,
                    height: 1.35,
                  ),
                ],
              ),
            ),

            const SizedBox(width: 8),

            CommonBoldText(
              title: price,
              fontSize: 13,
              fontWeight: FontWeight.w800,
              color: const Color.fromRGBO(11, 32, 51, 1),
            ),
          ],
        ),
      ),
    );
  }
}
