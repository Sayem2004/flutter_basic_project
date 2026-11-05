import "package:flutter/material.dart";
import "boldText.dart";
import "lightText.dart";

class CareerFeature {
  final String title;
  final String subtitle;
  final IconData icon;
  final String? badge;

  const CareerFeature({
    required this.title,
    required this.subtitle,
    required this.icon,
    this.badge,
  });
}

class CareerSection extends StatelessWidget {
  final List<CareerFeature> features;

  const CareerSection({
    super.key,
    required this.features,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: features.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        mainAxisExtent: 130,
      ),
      itemBuilder: (context, index) {
        final feature = features[index];

        return Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 255, 255, 1),
            border: Border.all(
              color: const Color.fromRGBO(232, 234, 240, 1),
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(243, 245, 249, 1),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Icon(
                      feature.icon,
                      size: 20,
                      color: const Color.fromRGBO(11, 32, 51, 1),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 12),
                    child: Icon(
                      Icons.chevron_right,
                      size: 16,
                      color: Color.fromRGBO(148, 163, 184, 1),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 11),

              Row(
                children: [
                  Flexible(
                    child: CommonBoldText(
                      title: feature.title,
                      fontSize: 14,
                      height: 1.2,
                    ),
                  ),
                  if (feature.badge != null) ...[
                    const SizedBox(width: 7),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 9,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(252, 245, 228, 1),
                        borderRadius: BorderRadius.circular(999),
                      ),
                      child: CommonLightText(
                        title: feature.badge!,
                        fontSize: 10.5,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(138, 96, 0, 1),
                      ),
                    ),
                  ],
                ],
              ),

              const SizedBox(height: 5),

              CommonLightText(
                title: feature.subtitle,
                fontSize: 11.5,
                height: 1.4,
              ),
            ],
          ),
        );
      },
    );
  }
}