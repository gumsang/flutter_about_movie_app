import 'package:flutter_about_movie_app/core/extensions.dart';
import 'package:flutter_test/flutter_test.dart';

String solution(List<String> texts) {
  final StringBuffer buffer = StringBuffer("Hello ");

  for (int i = 0; i < texts.length; i++) {
    buffer.write("${texts[i]},");
  }

  int last = buffer.toString().lastIndexOf(',');
  return buffer.toString().replaceRange(last, null, '.');
}

String solution1(List<String> texts) {
  final result = StringBuffer('Hello ');
  for (int i = 0; i < texts.length; i++) {
    result.write('${texts[i]},');
  }
  return '${result.toString().substring(0, result.length - 1)}.';
}

void main() {
  const text = '<<<First Grade>>>';

  test(
    "result를 잘 반환해야한다",
    () {
      expect(text.last(), '>');
    },
  );

  test(
    "last()는 마지막 문자를 반환해야 한다",
    () {
      expect(text.last(), '>');
    },
  );

  test(
    "isLetter()는 문자가 알파벳인지 판단해야한다",
    () {
      expect(text[0].isLetter(), false);
      expect(text[3].isLetter(), true);
      expect(text[5].isLetter(), true);
      expect(text[0].isLetterReg(), false);
      expect(text[5].isLetterReg(), true);
    },
  );

  test(
    "dropLast()는 마지막 문자를 버려야한다",
    () {
      expect(text.dropLast(), '<<<First Grade>>');
    },
  );

  test(
    "count()는 주어진 조건을 만족하는 갯수를 반환한다",
    () {
      expect(text.count(((ch) => ch == '>')), 3);
      expect(text.count(((ch) => ch == 'F')), 1);
    },
  );

  test(
    "take(int)는 앞에서 n개의 글자를 반환한다",
    () {
      expect(text.take(8), '<<<First');
    },
  );

  test(
    "takeLast(int)는 뒤에서 n개의 글자를 반환한다",
    () {
      expect(text.takeLast(8), 'Grade>>>');
      expect(text.takeLast(6), 'ade>>>');
    },
  );

  test(
    "takeWhile(조건)은 조건에 맞는 연속되는 물자열을 앞에서부터 찾아 반환한다.",
    () {
      expect(text.takeWhile((ch) => ch == '>'), '>>>');
      expect(text.takeWhile((ch) => ch == '<'), '<<<');
    },
  );
}
