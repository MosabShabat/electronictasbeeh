import 'package:flutter/material.dart';

SizedBox sizedBox({w, h}) {
  return SizedBox(
    width: w,
    height: h,
  );
}

Text text({text, color, bold, size}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: size,
      fontWeight: bold,
    ),
  );
}
