import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class SignUpScreenTopImage extends StatelessWidget {
  const SignUpScreenTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Login - Student".toUpperCase(),
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, letterSpacing: 2),
        ),
        const SizedBox(height: defaultPadding * 1.8),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 2,
              child: Image.asset("assets/images/student.png"),
            ),
            const Spacer(),
          ],
        ),
        const SizedBox(height: defaultPadding),
      ],
    );
  }
}
