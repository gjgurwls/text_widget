import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TextWidgetTest(),
  ));
}

class TextWidgetTest extends StatelessWidget {
  const TextWidgetTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            // decoration: BoxDecoration(
            //   //박스데코레이션을 사용할 경우 컨테이너에 색상을 지정하면안됨
            //   border: Border.all(color: Colors.black),
            // ),
          child: Text(
            '.안녕하세요. 플러터 공부중입니다..현재는 테스트 중입니다 한줄을 넘길수 없습니다.',
            style: TextStyle(
              color: Colors.green, //텍스트 색 지정
              fontSize: 20, //폰트 사이즈
              fontWeight: FontWeight.w700, //텍스트 굵기
              fontStyle: FontStyle.italic, //텍스트 스타일
              shadows: [ //텍스트 그림자 주기
                Shadow(
                  blurRadius: 6.0, //숫자가 높을수록 연해짐
                  color: Colors.black, //색
                  offset: Offset(20.0, 20.0), //위치
                ),
              ],
                decoration: TextDecoration.lineThrough, //가운데에 선 주기
                decorationColor: Colors.red, //선 색
                letterSpacing : 3.0, //글자와 글자 간격
                wordSpacing : -200.0, //왼쪽 오른쪽 으로 이동 ???
              textBaseline: TextBaseline.ideographic,
            ),
            textDirection: TextDirection.rtl, //왼쪽 오른쪽 이동가능
            strutStyle: StrutStyle(fontSize: 100), //줄 높이
            textAlign: TextAlign.center, // 텍스트 위치
            maxLines: 1, // 줄 표시
            overflow: TextOverflow.ellipsis,
            //clip : 기본값 , ellipsis : 글자가 넘어가면 ...으로 표시 , fade : 밑에 부분을 페이드 효과 ,visible : 글자를 보이게 한다.
          ),
        ),
      ),
    );
  }
}
