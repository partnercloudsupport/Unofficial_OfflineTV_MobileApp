import 'dart:async';
import 'dart:convert';
import 'dart:io';

String percentEncode(String value)
{
  String encoded = "";
  encoded = UTF8.encode(value).toString();
  String sb = "";
  String focus;
  for (int i = 0; i < encoded.length; i++) {
    focus = encoded[i];
    if (focus == '*') {
      sb += "%2A";
    } else if (focus == '+') {
      sb += "%20";
    } else if (focus == '%' && i + 1 < encoded.length
        && encoded[i + 1] == '7' && encoded[i + 2] == 'E') {
          sb += '~';
          i += 2;
    } else {
      sb += focus;
    }
  }
  return sb.toString();
}

String encodeSigningKey(String a, String b)
{
  return Uri.encodeComponent(a) + "&" + Uri.encodeComponent(b);
}