import 'dart:async';

import 'package:flutter/material.dart';

enum BtnType { left, right, download }

class MyButton extends StatefulWidget {
  final VoidCallback onPressed;
  final BtnType type;
  const MyButton({Key? key, required this.onPressed, required this.type})
      : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  double dec = 0;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          setState(() {
            dec = 5;
          });
          widget.onPressed.call();

          Timer(const Duration(milliseconds: 200), () {
            setState(() {
              dec = 0;
            });
          });
        },
        borderRadius: BorderRadius.circular(16),
        child:
            // false ? 1  : (true ? 2  : 3);

            widget.type == BtnType.left
                ? SizedBox(
                    height: 42,
                    width: 42,
                    child: Center(
                      child: AnimatedContainer(
                        height: 42 - dec,
                        width: 42 - dec,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        duration: const Duration(milliseconds: 200),
                        child: const Icon(
                          Icons.chevron_left_rounded,
                          size: 30,
                        ),
                      ),
                    ),
                  )
                : (widget.type == BtnType.right
                    ? SizedBox(
                        height: 42,
                        width: 42,
                        child: Center(
                          child: AnimatedContainer(
                            height: 42 - dec,
                            width: 42 - dec,
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            duration: const Duration(milliseconds: 200),
                            child: const Icon(
                              Icons.chevron_right_rounded,
                              size: 30,
                            ),
                          ),
                        ),
                      )
                    : SizedBox(
                        height: 42,
                        width: 140,
                        child: Center(
                          child: AnimatedContainer(
                            padding: const EdgeInsets.only(right: 12, left: 4),
                            height: 42 - dec,
                            width: 140 - dec,
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            duration: const Duration(milliseconds: 200),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.arrow_drop_down,
                                  size: 35,
                                  color: Color(0xff57EE9D),
                                ),
                                Text(
                                  "Download",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )));
  }
}
