import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class WidgetItems extends StatelessWidget {
  final String data;
  final int index;

  const WidgetItems({
    Key? key,
    required this.data, 
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      child: Container(
        width: 100.w,
        margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF000E33).withOpacity(0.10),
              spreadRadius: 0,
              blurRadius: 10,
              offset: const Offset(0, 2),
            )
          ]
        ),
        clipBehavior: Clip.hardEdge,
        child: Stack(
          children: [
            const Positioned(
              top: 55,
              right: -24,
              child: CircleAvatar(
                radius: 55,
                backgroundColor: Color(0xFFE5F8F7)
              )
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: const Color(0xFFE5F8F7),
                    child: Text(index.toString()),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF3D3D3D)
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}