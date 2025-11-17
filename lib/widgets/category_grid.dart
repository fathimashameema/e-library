import 'package:flutter/material.dart';

class CategoryGrid extends StatelessWidget {
  final String title;
  final Widget? icon;
  final void Function() onTap;
  const CategoryGrid({
    super.key,
    required this.title,
    this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenMode = MediaQuery.of(context).platformBrightness;
    final Color color =
        screenMode == Brightness.dark ? Colors.white : Colors.black;

    return InkWell(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(10),
        bottomRight: Radius.circular(10),
        topLeft: Radius.circular(20),
        bottomLeft: Radius.circular(20),
      ),
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.topLeft,
            height: 250,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: color, width: 5),

              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 50),
                  child: VerticalDivider(color: color, thickness: 5),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 10),
                    child: Column(
                      children: [
                        SizedBox(height: 25),

                        icon != null ? icon! : SizedBox.shrink(),
                        SizedBox(height: 10),
                        Text(
                          title,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                            color: color,
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: color, width: 5),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),

                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Expanded(child: Divider(thickness: 5, color: color)),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: Divider(thickness: 5, color: color)),
                        SizedBox(width: 20),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
